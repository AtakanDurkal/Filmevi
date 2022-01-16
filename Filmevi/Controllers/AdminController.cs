using Filmevi.Models;

using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Filmevi.Controllers
{
    public class AdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        public IActionResult Index()
        {
            Context c = new Context();
            var values = c.films.ToList();

            return View(values);
        }
        #region auth
        public IActionResult Login()
        {
            if (HttpContext.User.Identity.IsAuthenticated
            ) { return RedirectToAction("Index", "Admin"); }
            else
            {
                return View();
            }
        }

        [HttpPost]
        public async Task<IActionResult> Login(Admin admin)
        {
            Context c = new Context();
            var info = c.Admins.FirstOrDefault(x => x.AdminMail == admin.AdminMail &&
          x.AdminPassword == admin.AdminPassword);
            if (info != null)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, admin.AdminMail),
                    new Claim(ClaimTypes.Role, "Admin")
                };
                var userIdentity = new ClaimsIdentity(claims, "Login");
                ClaimsPrincipal principal = new ClaimsPrincipal(userIdentity);
                await HttpContext.SignInAsync(principal);

                HttpContext.Session.SetString("adminId", info.AdminId.ToString());
            }
            return RedirectToAction("Index", "Admin");


        }
        #endregion
        public IActionResult RemoveFilm(string category)
        {
            Context c = new Context();
            var film = c.films.Find(Convert.ToInt32(category));
            c.films.Remove(film);
            c.SaveChanges();
            return RedirectToAction("Index", "Admin");
        }

        public IActionResult AddFilm()
        {
            return View();
        }
        [HttpPost]
        public IActionResult AddFilm(addfilm af)
        {
            //add
            film p = new film();
            if (af.FilmCover != null)
            {
                var extension = Path.GetExtension(af.FilmCover.FileName);
                var newImageName = Guid.NewGuid() + extension;
                var location = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/FilmCover/", newImageName);
                var steam = new FileStream(location, FileMode.Create);
                af.FilmCover.CopyTo(steam);



                p.FilmCover = newImageName;
                p.FilmName = af.FilmName;
                p.FilmCatagory = af.FilmCatagory;
                p.FilmDesciption = af.FilmDesciption;


                Context c = new Context();
                c.films.Add(p);
                c.SaveChanges();
            }

            return RedirectToAction("Index", "Admin");
        }
    }


}


using Filmevi.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            Context c = new Context();
            var values = c.films.ToList();
            return View(values);
        }

        public IActionResult Category(string category)
        {
            Context c = new Context();
            var values = c.films.ToList().FindAll(x => x.FilmCatagory == category);

            return View(values);
        }
        public IActionResult Film(string category)
        {
            Context c = new Context();
            var values = c.films.First(x => x.Filmid == Convert.ToInt32(category));

            return View(values);
        }
        [HttpPost]
        public IActionResult Film(comment comme)
        {
            Context c = new Context();
                      c.comments.Add(comme);
            c.SaveChanges();
            return RedirectToAction("Film","Home",comme.filmid);
        }



    }
}

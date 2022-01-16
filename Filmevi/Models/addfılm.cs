using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Models
{
    public class addfilm
    {
        public string FilmCatagory { get; set; }

        public IFormFile FilmCover { get; set; }
        public string FilmName { get; set; }
        public string FilmDesciption { get; set; }

    }

}

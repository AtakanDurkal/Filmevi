using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Models
{
    public class film
    {
        [Key]

        public int Filmid { get; set; }

        public string FilmCatagory { get; set; }

        public string FilmCover { get; set; }
        public string FilmName { get; set; }
        public string FilmDesciption { get; set; }

    }

}

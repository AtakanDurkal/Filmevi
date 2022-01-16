using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Models
{
    public class comment
    {
        [Key]

        public int commentid { get; set; }
        public int filmid { get; set; }

        public string text { get; set; }

    }

}

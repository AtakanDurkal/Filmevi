using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Models
{
    public class Admin
    {[Key]
            public int AdminId { get; set; }
            public string AdminMail { get; set; }
            public string AdminPassword { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PalangPanya.ViewModels.mem_site_visit
{
    public class mem_site_visitViewModel
    {
        public Models.mem_site_visit mem_site_visit { get; set; }
        [Display(Name = "ประเทศ")]
        public string country_desc { get; set; }
    }
}

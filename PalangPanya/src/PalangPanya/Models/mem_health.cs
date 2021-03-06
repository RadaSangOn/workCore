﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PalangPanya.Models
{
    public partial class mem_health
    {
        public string member_code { get; set; }
        
        [Display(Name = "หมู่โลหิต")]
        public string blood_group { get; set; }
        [Display(Name = "งานอดิเรก / กีฬาที่ชอบ")]
        public string hobby { get; set; }
        public Guid id { get; set; }
        [Display(Name = "โรคประจำตัว")]
        public string medical_history { get; set; }
        [Display(Name = "อาหารที่แพ้")]
        public string restrict_food { get; set; }
        public byte[] rowversion { get; set; }
        [Display(Name = "ความสามารถพิเศษ")]
        public string special_skill { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}

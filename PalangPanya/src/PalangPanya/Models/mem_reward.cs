﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PalangPanya.Models
{
    public partial class mem_reward
    {
        [Display(Name = "ลำดับที่")]
        public int rec_no { get; set; }
        public string member_code { get; set; }
        public Guid id { get; set; }
        [Display(Name = "ชื่อ / คำอธิบาย")]
        public string reward_desc { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}

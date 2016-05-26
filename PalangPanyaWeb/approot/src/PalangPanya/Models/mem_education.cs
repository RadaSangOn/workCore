﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PalangPanya.Models
{
    public partial class mem_education
    {
        [Display(Name = "ลำดับที่")]
        public int rec_no { get; set; }
        public string member_code { get; set; }
        [Display(Name = "ชื่อสถาบัน")]
        public string colledge_name { get; set; }
        [Display(Name = "ระดับการศึกษา")]
        public string degree { get; set; }
        [Display(Name = "สาขา / วิชาเอก")]
        public string faculty { get; set; }
        public Guid id { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}
using System;
using System.Collections.Generic;

namespace PalangPanya.Models
{
    public partial class ini_province
    {
        public string province_code { get; set; }
        public int country_code { get; set; }
        public string area_part { get; set; }
        public Guid id { get; set; }
        public string pro_desc { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}

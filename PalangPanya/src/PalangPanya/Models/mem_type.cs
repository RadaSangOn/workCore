using System;
using System.Collections.Generic;

namespace PalangPanya.Models
{
    public partial class mem_type
    {
        public string mem_type_code { get; set; }
        public string mem_group_code { get; set; }
        public Guid id { get; set; }
        public string mem_type_desc { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}

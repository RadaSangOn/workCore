using System;
using System.Collections.Generic;

namespace PalangPanya.Models
{
    public partial class project_supporter
    {
        public string spon_code { get; set; }
        public string project_code { get; set; }
        public string contactor { get; set; }
        public string contactor_detail { get; set; }
        public Guid id { get; set; }
        public string ref_doc { get; set; }
        public decimal? support_budget { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}

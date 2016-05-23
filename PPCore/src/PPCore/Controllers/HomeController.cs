using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PPCore.Models;
using Microsoft.AspNetCore.Mvc;

namespace PPCore.Controllers
{
    public class HomeController : Controller
    {
        private PalangPanyaDBContext _context;

        public HomeController(PalangPanyaDBContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return RedirectToAction("Index", "members");
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}

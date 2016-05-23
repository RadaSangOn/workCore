using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using PalangPanya.Models;

namespace PalangPanya.Controllers
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

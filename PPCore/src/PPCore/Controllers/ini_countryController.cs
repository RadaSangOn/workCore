using System.Linq;
using PPCore.Models;
using Microsoft.AspNetCore.Mvc;

namespace PPCore.Controllers
{
    public class ini_countryController : Controller
    {
        private PalangPanyaDBContext _context;

        public ini_countryController(PalangPanyaDBContext context)
        {
            _context = context;    
        }

        // GET: ini_country
        public IActionResult Index()
        {
            return View(_context.ini_country.ToList());
        }

        // GET: ini_country/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            ini_country ini_country = _context.ini_country.Single(m => m.country_code == id);
            if (ini_country == null)
            {
                return NotFound();
            }

            return View(ini_country);
        }

        // GET: ini_country/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: ini_country/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(ini_country ini_country)
        {
            if (ModelState.IsValid)
            {
                _context.ini_country.Add(ini_country);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ini_country);
        }

        // GET: ini_country/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            ini_country ini_country = _context.ini_country.Single(m => m.country_code == id);
            if (ini_country == null)
            {
                return NotFound();
            }
            return View(ini_country);
        }

        // POST: ini_country/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(ini_country ini_country)
        {
            if (ModelState.IsValid)
            {
                _context.Update(ini_country);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ini_country);
        }

        // GET: ini_country/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            ini_country ini_country = _context.ini_country.Single(m => m.country_code == id);
            if (ini_country == null)
            {
                return NotFound();
            }

            return View(ini_country);
        }

        // POST: ini_country/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            ini_country ini_country = _context.ini_country.Single(m => m.country_code == id);
            _context.ini_country.Remove(ini_country);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

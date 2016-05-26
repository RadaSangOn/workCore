using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using PalangPanya.Models;
using System;

namespace PalangPanya.Controllers
{
    public class mem_healthController : Controller
    {
        private PalangPanyaDBContext _context;

        public mem_healthController(PalangPanyaDBContext context)
        {
            _context = context;    
        }

        // GET: mem_health
        public IActionResult Index(string memberId)
        {
            if (memberId == null)
            {
                return HttpNotFound();
            }
            ViewBag.memberId = memberId;
            ViewBag.blood_group = new SelectList(new[]
                {
                    new SelectListItem { Text = "O", Value = "O", Selected = true },
                    new SelectListItem { Text = "A", Value = "A"},
                    new SelectListItem { Text = "B", Value = "B"},
                    new SelectListItem { Text = "AB", Value = "AB"},
                }, "Value", "Text");
            
            var member = _context.member.Single(m => m.id == new Guid(memberId));
            mem_health mem_health = _context.mem_health.SingleOrDefault(m => m.member_code == member.member_code);


            if (mem_health == null)
            {
                mem_health mh = new mem_health();
                mh.member_code = member.member_code;
                return View(mh);
            } else
            {
                return View(mem_health);
            }
        }

        // POST: mem_health/Edit/5
        [HttpPost]
        public IActionResult Edit(string memberId, string member_code, string medical_history, string blood_group, string hobby, string restrict_food, string special_skill)
        {
            ViewBag.memberId = memberId;

            mem_health mem_health = _context.mem_health.SingleOrDefault(m => m.member_code == member_code);
            if (mem_health == null)
            {
                mem_health mh = new mem_health();
                mh.member_code = member_code;
                mh.medical_history = medical_history;
                mh.blood_group = blood_group;
                mh.hobby = hobby;
                mh.restrict_food = restrict_food;
                mh.special_skill = special_skill;
                mh.x_status = "Y";
                _context.Add(mh);
            }
            else
            {
                mem_health mh = mem_health;
                mh.member_code = member_code;
                mh.medical_history = medical_history;
                mh.blood_group = blood_group;
                mh.hobby = hobby;
                mh.restrict_food = restrict_food;
                mh.special_skill = special_skill;
                mh.x_status = "Y";
                _context.Update(mh);
            }

            _context.SaveChanges();
            return Json(new { result = "success" });
        }
    }
}

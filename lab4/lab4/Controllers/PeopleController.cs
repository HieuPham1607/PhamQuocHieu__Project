using lab4.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Reflection;

namespace lab4.Controllers
{
    public class PeopleController : Controller
    {
        // GET: PeopleController1
        public ActionResult Index()
        {
            var peoples = DataLocal.GetPeoples();
            return View(peoples);
        }

        // GET: PeopleController1/Details/5
        public ActionResult Details(int Id)
        {
            var peoples = DataLocal.GetPeopleById(Id);
            return View(peoples);
        }

        // GET: PeopleController1/Create
        public ActionResult Create()
        {
            People people = new People();
            return View();
        }

        // POST: PeopleController1/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count() > 0 && files[0].Length > 0) 
                {
                    var file = files[0];
                    var FileName = file.FileName;
                    var path = Path.Combine(Directory.GetCurrentDirectory(),"wwwroot\\image\\avatar", FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                }
            }
            catch
            {
                return View();
            }
        }

        // GET: PeopleController1/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: PeopleController1/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: PeopleController1/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: PeopleController1/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}

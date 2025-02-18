using DevXuongMoc.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Linq;

namespace DevXuongMoc.Controllers
{
    public class LoginController : Controller
    {
        private readonly XuongMocContext _context;

        public LoginController(XuongMocContext context)
        {
            _context = context;
        }

        public IActionResult Index(string url)
        {
            var memberData = HttpContext.Session.GetString("Member");
            if (!string.IsNullOrEmpty(memberData))
            {
                var datalogin = JsonConvert.DeserializeObject<Customer>(memberData);
                ViewBag.Customer = datalogin;
            }

            ViewBag.UrlAction = url;
            return View();
        }

        [HttpPost]
        public IActionResult Registy(Customer model)
        {
            try
            {
                if (_context.Customers.Any(x => x.Username == model.Username || x.Email == model.Email))
                {
                    TempData["errorRegisty"] = "Tài khoản hoặc email đã tồn tại!";
                    return RedirectToAction("Index");
                }

                model.Password = Utilities.Utils.GetSHA256Hash(model.Password);
                model.CreatedDate = DateTime.Now;
                model.UpdatedDate = DateTime.Now;
                model.Isactive = 1;
                _context.Add(model);
                _context.SaveChanges();

                TempData["successRegisty"] = "Đăng ký thành công!";
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                TempData["errorRegisty"] = "Lỗi đăng ký: " + ex.Message;
                return RedirectToAction("Index");
            }
        }

        [HttpPost]
        public IActionResult Login(CustomerLogin model, string urlAction)
        {
            var pass = Utilities.Utils.GetSHA256Hash(model.Password);
            var data = _context.Customers.FirstOrDefault(x => x.Isactive == 1 && (x.Username == model.UserOrEmail || x.Email == model.UserOrEmail) && x.Password == pass);

            if (data != null)
            {
                HttpContext.Session.SetString("Member", JsonConvert.SerializeObject(data));
                return !string.IsNullOrEmpty(urlAction) ? Redirect(urlAction) : RedirectToAction("Index", "Home");
            }

            TempData["errorLogin"] = "Sai tài khoản hoặc mật khẩu!";
            return RedirectToAction("Index");
        }

        [HttpPost] // Đổi từ HttpGet sang HttpPost
        public IActionResult Logout()
        {
            HttpContext.Session.Remove("Member");
            return RedirectToAction("Index", "Home");
        }
    }
}

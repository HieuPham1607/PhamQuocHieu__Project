using DevXuongMoc.Areas.Admins.Models;
using DevXuongMoc.Models;
using Microsoft.AspNetCore.Mvc;

namespace DevXuongMoc.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class LoginController : Controller
    {
        public XuongMocContext _context;
        public LoginController(XuongMocContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost] // POST -> khi submit form
        public IActionResult Index(Login model)
        {
            if (ModelState.IsValid)
            {
                var pass = model.Password;
                // Tìm người dùng với email và mật khẩu
                var dataLogin = _context.AdminUsers
                    .Where(x => x.Email == model.Email && x.Password == pass)
                    .FirstOrDefault();

                if (dataLogin != null)
                {
                    // Lưu session khi đăng nhập thành công
                    HttpContext.Session.SetString("AdminLogin", model.Email);

                    return RedirectToAction("Index", "Dashboard");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập thất bại. Email hoặc mật khẩu không đúng.");
                }
            }
            return View(model);


        }
        [HttpGet]// thoát đăng nhập, huỷ session
        public IActionResult Logout()
        {
            HttpContext.Session.Remove("AdminLogin"); // huỷ session với key AdminLogin đã lưu trước đó

            return RedirectToAction("Index");
        }
    }
}

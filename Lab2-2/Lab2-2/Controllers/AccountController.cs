using Lab2_2.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab2_2.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            List<Account> accounts = new List<Account>
            {
                new Account()
                {
                    Id = 1,
                    Name = "Test",
                    Email = "Phamhiuhiu01@gmail.com",
                    Address = "Hà Nội",
                    Avatar = Url.Content("~/Images/Avatar/ble.png"),
                    Gender = 1,
                    Bio = "Handsome",
                    Birthday = new DateTime(2003,7,16)
                },
            };
            ViewBag.Accounts = accounts;
            return View();
        }
        public IActionResult Profile() {
            Account account = new Account()
            {
                Id = 1,
                Name = "Hiệu",
                Email = "Phamhiuhiu01@gmail.com",
                Phone = "0969670959",
                Address = "Hà Nội",
                Avatar = Url.Content("~/Images/Avatar/ble.png"),
                Gender = 1,
                Bio = "daptrai",
                Birthday = new DateTime(2003, 7, 16)
            };
            ViewBag.account = account;
            return View();
        }
    }
}

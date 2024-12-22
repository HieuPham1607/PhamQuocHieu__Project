using Microsoft.AspNetCore.Mvc;

namespace Lab9.Controllers
{
    public class CustomerMemberController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

using Microsoft.AspNetCore.Mvc;

namespace DevXuongMoc.Controllers
{
    public class NewController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

using Lab02.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab02.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult GetAllProduct()
        {

            return View("Product");
        }
        public IActionResult GetProduct()
        {
            Product p = new Product
            {
                ProductId = 1,
                ProductName = "Test",
                YearReLease = 2024,
                Price = 3.144
            };
            ViewBag.Product = p;
            ViewData["productVd"] = p;
            return View();
        }
    }
}

﻿using Microsoft.AspNetCore.Mvc;

namespace Lab9.Controllers
{
    public class LoginController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

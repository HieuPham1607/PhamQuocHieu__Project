﻿using Microsoft.AspNetCore.Mvc;

namespace Lab9.Areas.Admin.Controllers
{
    //[Area("Admin")]
    public class DashboardController : BaseController
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

﻿using DevXuongMoc.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DevXuongMoc.Controllers
{
    public class ProductController : Controller
    {
        private readonly XuongMocContext _context;
        public ProductController(XuongMocContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var data = await _context.Products.ToListAsync();
            return View(data);
        }
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products.DefaultIfEmpty()
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DevXuongMoc.Models;

namespace DevXuongMoc.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class OrdersController : Controller
    {
        private readonly XuongMocContext _context;

        public OrdersController(XuongMocContext context)
        {
            _context = context;
        }

        // GET: Admins/Orders
        public async Task<IActionResult> Index()
        {
            var xuongMocContext = _context.Orders.Include(o => o.IdcustomerNavigation);
            return View(await xuongMocContext.ToListAsync());
        }

        // GET: Admins/Orders/Details/5
        public async Task<IActionResult> Details(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var order = await _context.Orders
                .Include(o => o.IdcustomerNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (order == null)
            {
                return NotFound();
            }

            return View(order);
        }

        // GET: Admins/Orders/Create
        public IActionResult Create()
        {
            ViewData["Idcustomer"] = new SelectList(_context.Customers, "Id", "Id");
            return View();
        }

        // POST: Admins/Orders/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Idorders,OrdersDate,Idcustomer,Idpayment,TotalMoney,Notes,NameReciever,Address,Email,Phone,Isdelete,Isactive")] Order order)
        {
            if (ModelState.IsValid)
            {
                _context.Add(order);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["Idcustomer"] = new SelectList(_context.Customers, "Id", "Id", order.Idcustomer);
            return View(order);
        }

        // GET: Admins/Orders/Edit/5
        public async Task<IActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var order = await _context.Orders.FindAsync(id);
            if (order == null)
            {
                return NotFound();
            }
            ViewData["Idcustomer"] = new SelectList(_context.Customers, "Id", "Id", order.Idcustomer);
            return View(order);
        }

        // POST: Admins/Orders/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(long id, [Bind("Id,Idorders,OrdersDate,Idcustomer,Idpayment,TotalMoney,Notes,NameReciever,Address,Email,Phone,Isdelete,Isactive")] Order order)
        {
            if (id != order.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(order);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrderExists(order.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["Idcustomer"] = new SelectList(_context.Customers, "Id", "Id", order.Idcustomer);
            return View(order);
        }

        // GET: Admins/Orders/Delete/5
        public async Task<IActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var order = await _context.Orders
                .Include(o => o.IdcustomerNavigation)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (order == null)
            {
                return NotFound();
            }

            return View(order);
        }

        // POST: Admins/Orders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(long id)
        {
            var order = await _context.Orders.FindAsync(id);
            if (order != null)
            {
                _context.Orders.Remove(order);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool OrderExists(long id)
        {
            return _context.Orders.Any(e => e.Id == id);
        }
    }
}

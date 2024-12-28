using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DevXuongMoc.Models;
using Microsoft.AspNetCore.Http;

namespace DevXuongMoc.Areas.Admins.Controllers
{
    [Area("Admins")]
    public class PartnersController : Controller
    {
        private readonly XuongMocContext _context;

        public PartnersController(XuongMocContext context)
        {
            _context = context;
        }

        // GET: Admins/Partners
        public async Task<IActionResult> Index(string searchString)
        {
            ViewData["CurrentFilter"] = searchString;

            var partners = from p in _context.Partners
                           select p;

            if (!string.IsNullOrEmpty(searchString))
            {
                partners = partners.Where(p => p.Title.Contains(searchString));
            }

            return View(await partners.ToListAsync());
        }

        // GET: Admins/Partners/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var partner = await _context.Partners
                .FirstOrDefaultAsync(m => m.Id == id);
            if (partner == null)
            {
                return NotFound();
            }

            return View(partner);
        }

        // GET: Admins/Partners/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admins/Partners/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,Logo,Url,Orders,CreatedDate,UpdatedDate,AdminCreated,AdminUpdated,Content,Status,Isdelete")] Partner partner, IFormFile logoFile)
        {
            if (ModelState.IsValid)
            {
                // Kiểm tra nếu có file hình ảnh được tải lên
                if (logoFile != null && logoFile.Length > 0)
                {
                    // Tạo một tên file ngẫu nhiên để tránh trùng lặp
                    var fileName = Guid.NewGuid().ToString() + Path.GetExtension(logoFile.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", fileName);

                    // Lưu hình ảnh vào thư mục uploads trong wwwroot
                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        await logoFile.CopyToAsync(stream);
                    }

                    // Lưu đường dẫn của hình ảnh vào logo của partner
                    partner.Logo = "/images/" + fileName;
                }

                // Cập nhật thời gian tạo và cập nhật
                partner.CreatedDate = DateTime.Now;
                partner.UpdatedDate = DateTime.Now;

                // Thêm partner vào cơ sở dữ liệu
                _context.Add(partner);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(partner);
        }

        // GET: Admins/Partners/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var partner = await _context.Partners.FindAsync(id);
            if (partner == null)
            {
                return NotFound();
            }
            return View(partner);
        }

        // POST: Admins/Partners/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Logo,Url,Orders,CreatedDate,UpdatedDate,AdminCreated,AdminUpdated,Content,Status,Isdelete")] Partner partner, IFormFile logoFile)
        {
            if (id != partner.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    // Nếu có file hình ảnh mới, cập nhật hình ảnh
                    if (logoFile != null && logoFile.Length > 0)
                    {
                        var fileName = Guid.NewGuid().ToString() + Path.GetExtension(logoFile.FileName);
                        var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", fileName);

                        // Lưu hình ảnh vào thư mục uploads trong wwwroot
                        using (var stream = new FileStream(filePath, FileMode.Create))
                        {
                            await logoFile.CopyToAsync(stream);
                        }

                        // Cập nhật đường dẫn hình ảnh mới
                        partner.Logo = "/images/" + fileName;
                    }

                    // Cập nhật thời gian cập nhật
                    partner.UpdatedDate = DateTime.Now;

                    // Cập nhật thông tin partner
                    _context.Update(partner);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PartnerExists(partner.Id))
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
            return View(partner);
        }

        // GET: Admins/Partners/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var partner = await _context.Partners
                .FirstOrDefaultAsync(m => m.Id == id);
            if (partner == null)
            {
                return NotFound();
            }

            return View(partner);
        }

        // POST: Admins/Partners/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var partner = await _context.Partners.FindAsync(id);
            if (partner != null)
            {
                _context.Partners.Remove(partner);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PartnerExists(int id)
        {
            return _context.Partners.Any(e => e.Id == id);
        }
    }
}

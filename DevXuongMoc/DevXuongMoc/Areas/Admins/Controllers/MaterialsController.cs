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
    public class MaterialsController : Controller
    {
        private readonly XuongMocContext _context;

        public MaterialsController(XuongMocContext context)
        {
            _context = context;
        }

        // GET: Admins/Materials
        public async Task<IActionResult> Index(string searchString)
        {
            ViewData["CurrentFilter"] = searchString;

            var materials = from m in _context.Materials
                            select m;

            if (!string.IsNullOrEmpty(searchString))
            {
                materials = materials.Where(m => m.Title.Contains(searchString));
            }

            return View(await materials.ToListAsync());
        }

        // GET: Admins/Materials/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var material = await _context.Materials
                .FirstOrDefaultAsync(m => m.Id == id);
            if (material == null)
            {
                return NotFound();
            }

            return View(material);
        }

        // GET: Admins/Materials/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admins/Materials/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,Icon,MetaTitle,MetaKeyword,MetaDescription,Slug,Orders,Parentid,CreatedDate,UpdatedDate,AdminCreated,AdminUpdated,Notes,Status,Isdelete")] Material material, IFormFile iconFile)
        {
            if (ModelState.IsValid)
            {
                // Kiểm tra nếu có file hình ảnh được tải lên
                if (iconFile != null && iconFile.Length > 0)
                {
                    // Tạo một tên file ngẫu nhiên để tránh trùng lặp
                    var fileName = Guid.NewGuid().ToString() + Path.GetExtension(iconFile.FileName);
                    var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", fileName);

                    // Lưu hình ảnh vào thư mục uploads trong wwwroot
                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        await iconFile.CopyToAsync(stream);
                    }

                    // Lưu đường dẫn của hình ảnh vào Icon của Material
                    material.Icon = "/images/" + fileName;
                }

                // Cập nhật thời gian tạo và cập nhật
                material.CreatedDate = DateTime.Now;
                material.UpdatedDate = DateTime.Now;

                // Thêm material vào cơ sở dữ liệu
                _context.Add(material);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(material);
        }

        // GET: Admins/Materials/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var material = await _context.Materials.FindAsync(id);
            if (material == null)
            {
                return NotFound();
            }
            return View(material);
        }

        // POST: Admins/Materials/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Icon,MetaTitle,MetaKeyword,MetaDescription,Slug,Orders,Parentid,CreatedDate,UpdatedDate,AdminCreated,AdminUpdated,Notes,Status,Isdelete")] Material material, IFormFile iconFile)
        {
            if (id != material.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    // Kiểm tra nếu có file hình ảnh mới được tải lên
                    if (iconFile != null && iconFile.Length > 0)
                    {
                        var fileName = Guid.NewGuid().ToString() + Path.GetExtension(iconFile.FileName);
                        var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "images", fileName);

                        // Lưu hình ảnh vào thư mục uploads trong wwwroot
                        using (var stream = new FileStream(filePath, FileMode.Create))
                        {
                            await iconFile.CopyToAsync(stream);
                        }

                        // Cập nhật đường dẫn hình ảnh mới
                        material.Icon = "/images/" + fileName;
                    }

                    // Cập nhật thời gian sửa đổi
                    material.UpdatedDate = DateTime.Now;

                    // Cập nhật thông tin vào cơ sở dữ liệu
                    _context.Update(material);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MaterialExists(material.Id))
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
            return View(material);
        }

        // GET: Admins/Materials/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var material = await _context.Materials
                .FirstOrDefaultAsync(m => m.Id == id);
            if (material == null)
            {
                return NotFound();
            }

            return View(material);
        }

        // POST: Admins/Materials/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var material = await _context.Materials.FindAsync(id);
            if (material != null)
            {
                _context.Materials.Remove(material);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MaterialExists(int id)
        {
            return _context.Materials.Any(e => e.Id == id);
        }
    }
}

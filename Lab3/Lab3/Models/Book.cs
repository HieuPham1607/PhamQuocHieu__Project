using Microsoft.AspNetCore.Mvc.Rendering;

namespace Lab3.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int AuthorId { get; set; }
        public int GenderId { get; set; }
        public string Image { get; set; }
        public float Price { get; set; }
        public int TotalPage { get; set; }
        public string Sumary { get; set; }
        public List<Book> GetBookList()
        {
            List<Book> books = new List<Book>()
            {
                new Book()
                {
                    Id = 1,
                    Title = "Chú không nể anh",
                    AuthorId = 1,  
                    GenderId = 1,
                    Image ="Image/Product/1.png.png",
                    Price = 50000,
                    Sumary ="",
                    TotalPage = 250
                },
                new Book()
                {
                    Id = 2,
                    Title = "Chú không nể anh",
                    AuthorId = 1,
                    GenderId = 1,
                    Image ="Image/Product/1.png.png",
                    Price = 50000,
                    Sumary ="",
                    TotalPage = 250
                },
                new Book()
                {
                    Id = 3,
                    Title = "Chú không nể anh",
                    AuthorId = 1,
                    GenderId = 1,
                    Image ="Image/Product/1.png.png",
                    Price = 50000,
                    Sumary ="",
                    TotalPage = 250
                },
                new Book()
                {
                    Id = 4,
                    Title = "Chú không nể anh",
                    AuthorId = 1,
                    GenderId = 1,
                    Image ="Image/Product/5.png.png",
                    Price = 50000,
                    Sumary ="",
                    TotalPage = 250
                },
                new Book()
                {
                    Id = 5,
                    Title = "Chú không nể anh",
                    AuthorId = 1,
                    GenderId = 1,
                    Image ="Image/Product/5.png.png",
                    Price = 50000,
                    Sumary ="",
                    TotalPage = 250
                }
            };
            return books;
        }
        public Book GetBookById(int id)
        {
            Book book = this.GetBookList().FirstOrDefault(b => b.Id == id);
            return book;
        }
        public List<SelectListItem> Authors { get; } = new List<SelectListItem>
        {
            new SelectListItem{Value="1", Text="Nam cao"},
            new SelectListItem{Value="1", Text="Nam Kao"},
            new SelectListItem{Value="1", Text="Nam Keo"},
            new SelectListItem{Value="1", Text="Nam Ngư"},
            new SelectListItem{Value="1", Text="Nam Anh"}
        };
        public List<SelectListItem> Genres { get; } = new List<SelectListItem>
        {
            new SelectListItem{Value="1", Text="Chí phèo"},
            new SelectListItem{Value="1", Text="Chí"},
            new SelectListItem{Value="1", Text="Cậu vàng"},
            new SelectListItem{Value="1", Text="Lão Hạc"},
            new SelectListItem{Value="1", Text="Ngụ ngôn"}
        };

    }
}

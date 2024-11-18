using Microsoft.AspNetCore.SignalR;
using static System.Net.Mime.MediaTypeNames;
using System.Runtime.InteropServices;

namespace lab4.Models
{
    public class DataLocal
    {
        public static List<People> peoples = new List<People>()
        {
            new People(){Id=0,Name="Devmaster",Email="devmaster.edu.vn@gmail.com",Phone="0978611889",Address="25 Vũ Ngọc Phan",Avatar="~/image/avatar/1.gif",Birthday=Convert.ToDateTime("2012/09/22"),Bio="Viện Công Nghệ Devmaster",Gender=0},
            new People(){Id=1,Name="Trịnh Văn Chung",Email="chungtrinhj@gmail.com",Phone="0978611889",Address="25 Vũ Ngọc Phan",Avatar="image/avatar/2.png",Birthday=Convert.ToDateTime("1979/05/25"),Bio="Devmaster Academy",Gender=1},
            new People(){Id=2,Name="Nguyễn Huy",Email="huynguyen@gmail.com",Phone="0912113113",Address="Gia lâm, hà nội",Avatar="image/avatar/1.gif",Birthday=Convert.ToDateTime("1999/02/12"),Bio="Viện Devmaster",Gender=1},
            new People(){Id=3,Name="Tiểu Long Nữ",Email="longnutieu@gmail.com",Phone="0904001002",Address="Ba đình, hà nội", Avatar="image/avatar/1.gif",Birthday=Convert.ToDateTime("2000/02/02"),Bio="Nhân vật trong phim kiếm hiệp",Gender=2},
            new People(){Id=4,Name="Pikachu",Email="chupika@gmail.com",Phone="0902114115",Address="Quang trung, hà đông",Avatar="image/avatar/1.gif",Birthday=Convert.ToDateTime("2000/02/02"),Bio="Nhân vật trong phim kiếm hiệp",Gender=2}
        };
        public static List<People> GetPeoples()
        {
            return peoples;
        }
        public static People? GetPeopleById(int Id) { 
            var people = peoples.FirstOrDefault(x => x.Id == Id);
            return people;
        }
    }
}

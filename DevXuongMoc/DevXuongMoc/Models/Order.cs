﻿using System;
using System.Collections.Generic;

namespace DevXuongMoc.Models;

public partial class Order
{
    public long Id { get; set; }

    public long? Idorders { get; set; }

    public DateTime? OrdersDate { get; set; }

    public long? Idcustomer { get; set; }

    public long? Idpayment { get; set; }

    public decimal? TotalMoney { get; set; }

    public string? Notes { get; set; }

    public string? NameReciever { get; set; }

    public string? Address { get; set; }

    public string? Email { get; set; }

    public string? Phone { get; set; }

    public byte? Isdelete { get; set; }

    public byte? Isactive { get; set; }

    public virtual Customer? IdcustomerNavigation { get; set; }

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();
}

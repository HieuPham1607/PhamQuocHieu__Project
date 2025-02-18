using System;
using System.Collections.Generic;

namespace DevXuongMoc.Models;

public partial class OrderDetail
{
    public long Id { get; set; }

    public long? Idorder { get; set; }

    public int? Idproduct { get; set; }

    public decimal? Price { get; set; }

    public int? Qty { get; set; }

    public decimal? Total { get; set; }

    public int? ReturnQty { get; set; }

    public virtual Order? IdorderNavigation { get; set; }

    public virtual Product? IdproductNavigation { get; set; }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using QuanLyBanSach_new.SupportClass;
using QuanLyBanSach_new.Entities;

namespace QuanLyBanSach_new.DAO
{
    public class GioHangDao
    {
        BookShopDbContext db;
        public GioHangDao()
        {
            db = new BookShopDbContext();
        }

        public void insertToCart(string bookTitle, int qty, int amount, int price, int stock)
        {
            GioHang g = new GioHang();
            g.BookTitle = bookTitle;
            g.Qty = qty;
            g.Amount = amount;
            g.Price = price;
            g.Stock = stock;
            db.GioHangs.Add(g);
            db.SaveChanges();
        }

        public void deleteAllCartRecord()
        {
            db.Database.ExecuteSqlCommand("delete from GioHang");
            db.SaveChanges();
        }

        public IList<Cart> bindDataToGridCart()
        {
            var res = db.Database.SqlQuery<Cart>("proc_bindDataToCart").ToList();
            return res;
        }

        public int deleteOneRecord(string booktitle, int qty)
        {
            var g = db.GioHangs.Where(x => x.BookTitle.Trim().ToLower() == booktitle.Trim().ToLower() && x.Qty == qty).FirstOrDefault();
            if (g == null)
            {
                return 0;
            }
            else
            {
                db.GioHangs.Remove(g);
                db.SaveChanges();
                return 1;
            }
        }

        public void addIdCustomerToAllRecord(int id)
        {
            foreach (var item in db.GioHangs)
            {
                item.CustomerID = id;
            }
            db.SaveChanges();
        }

        public int netAmount()
        {
            var myTable = db.GioHangs.ToList();
            int netAmount_ = 0;
            foreach (var myRow in myTable)
            {
                netAmount_ += (int)myRow.Amount;
            }
            return netAmount_;
        }

        public string getIdCustomer()
        {
            var res = db.GioHangs.Select(x => x.CustomerID).FirstOrDefault();
            return res.ToString();
        }

        public IList<GioHang> listGioHang()
        {
            var res = db.GioHangs.ToList();
            return res;
        }

        public int totalAmount()
        {
            int sum = 0;
            var res = db.GioHangs.ToList();
            foreach (var item in res)
            {
                sum += item.Amount;
            }
            return sum;
        }

        public int findBook(string tenSach)
        {
            var res = db.GioHangs.Where(x => x.BookTitle == tenSach).FirstOrDefault();
            if (res != null)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public void updateQuantity(string name, int qty) // + them so luong
        {
            var res = db.GioHangs.Where(x => x.BookTitle == name).FirstOrDefault();
            if (res != null)
            {
                res.Qty += qty;
                res.Amount = res.Price * res.Qty;
                db.SaveChanges();
            }
        }

        public void reduceQuantity(string name, int qty) // giam so luong
        {
            var res = db.GioHangs.Where(x => x.BookTitle == name).FirstOrDefault();
            if (res != null)
            {
                res.Qty -= qty;
                if (res.Qty > 0)
                {
                    res.Amount = res.Price * res.Qty;
                    db.SaveChanges();
                }
                else if (res.Qty == 0)
                {
                    GioHangDao dao = new GioHangDao();
                    dao.deleteOneRecord(name, 0);
                }
                else
                {

                }
            }
        }

    }
}

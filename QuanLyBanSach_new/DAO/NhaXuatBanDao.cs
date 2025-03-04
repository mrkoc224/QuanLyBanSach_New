﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyBanSach_new.Entities;


using QuanLyBanSach_new.SupportClass;


namespace QuanLyBanSach_new.DAO
{
    public class NhaXuatBanDao
    {

        BookShopDbContext db;
        public NhaXuatBanDao()
        {
            db = new BookShopDbContext();
        }

        public void populatePublisher(ComboBox c)
        {
            c.DataSource = db.NhaXuatBans.Select(x => x.TenNXB).ToList();
        }

        public List<NXB> listPublishher()
        {
            return db.Database.SqlQuery<NXB>("proc_listNXB").ToList();
        }

        public string getIdPublisher(string publisherName)
        {
            var u = db.NhaXuatBans.Where(x => x.TenNXB == publisherName).FirstOrDefault();
            if (u == null)
            {
                return "abc";
            }
            else
            {
                return u.ID.ToString();
            }
        }

        public int insertPublisher(string tennxb, string diachi, string dienthoai)
        {
            var h = new SqlParameter("@tennxb", tennxb);
            var d = new SqlParameter("@diachi", diachi);
            var dt = new SqlParameter("@dienthoai", dienthoai);

            int res = db.Database.ExecuteSqlCommand("exec proc_themNhaXuatBanMoi @tennxb, @diachi, @dienthoai ", h, d, dt);
            return res;
        }

        //public IList<PublisherNameOnly> getPublisherNameFromBookTitle(string booktitle)
        //{
        //    var bt = new SqlParameter("@bookTitle", booktitle);
        //    var res = db.Database.SqlQuery<PublisherNameOnly>("proc_getPublisherNameFromBookTitle @bookTitle", bt).ToList() ;
        //    return res;
        //}

        public void updatePublisherName(int id, string newname)
        {
            var res = db.NhaXuatBans.Where(x => x.ID == id).FirstOrDefault();
            res.TenNXB = newname;
            db.SaveChanges();
        }

        public int updatePublisher(int id, string name, string diachi, string dienthoai)
        {
            var res = db.NhaXuatBans.Where(x => x.ID == id).FirstOrDefault();
            res.TenNXB = name;
            res.DiaChi = diachi;
            res.DienThoai = dienthoai;
            db.SaveChanges();
            return res.ID;
        }

        public int deletePublisher(int id)
        {
            var res = db.NhaXuatBans.Where(x => x.ID == id).FirstOrDefault();
            db.NhaXuatBans.Remove(res);
            db.SaveChanges();
            return res.ID;
        }
    }
}

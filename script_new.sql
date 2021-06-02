USE [master]
GO
/****** Object:  Database [QuanLyBanSach_new]    Script Date: 6/3/2021 5:07:36 AM ******/
CREATE DATABASE [QuanLyBanSach_new]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanSach_new', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVERR\MSSQL\DATA\QuanLyBanSach_new.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanSach_new_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVERR\MSSQL\DATA\QuanLyBanSach_new_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanSach_new] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanSach_new].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanSach_new] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanSach_new] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanSach_new] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanSach_new] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanSach_new] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanSach_new] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanSach_new] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanSach_new] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanSach_new] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanSach_new] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyBanSach_new] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanSach_new', N'ON'
GO
USE [QuanLyBanSach_new]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenCD] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [bit] NULL CONSTRAINT [DF_DonHang_DaThanhToan]  DEFAULT ((1)),
	[TinhTrangGiaoHang] [bit] NULL CONSTRAINT [DF_DonHang_TinhTrangGiaoHang]  DEFAULT ((1)),
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[TongTien] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[BookTitle] [nvarchar](50) NOT NULL,
	[Qty] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[Stock] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[BookTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NULL CONSTRAINT [DF_PhieuNhap_NgayNhap]  DEFAULT (getdate()),
	[TongTien] [int] NULL,
	[TieuDe] [nvarchar](200) NULL,
	[MoTa] [nvarchar](200) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[GiaBan] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [date] NULL,
	[SoLuongTon] [int] NULL,
	[MaNXB] [int] NULL,
	[MaCD] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTenTG] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TieuSu] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGia](
	[MaSach] [int] NOT NULL,
	[MaTG] [int] NOT NULL,
	[VaiTro] [nvarchar](50) NULL CONSTRAINT [DF_ThamGia_VaiTro]  DEFAULT (N'Tác giả chính'),
	[ViTri] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_Sach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_ChuDe]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NhaXuatBan] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_Sach]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_TacGia]
GO
/****** Object:  StoredProcedure [dbo].[demKH]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[demKH] as
begin
select count(kh.ID) as soluong from KhachHang kh
end
GO
/****** Object:  StoredProcedure [dbo].[Doanhthu_mmyyyy]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Doanhthu_mmyyyy] @thang int,@nam int
as
begin
select sum(dbo.DonHang.TongTien) as tongtien
from dbo.DonHang
where YEAR(dbo.DonHang.NgayDat)=@nam and MONTH(dbo.DonHang.NgayDat)=@thang
group by YEAR(dbo.DonHang.NgayDat),MONTH(dbo.DonHang.NgayDat)
order by sum(dbo.DonHang.TongTien) desc
end
GO
/****** Object:  StoredProcedure [dbo].[proc_bindDataToCart]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_bindDataToCart]
as
begin
	select g.BookTitle, g.Qty, g.Amount from GioHang g
end

GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchByAuthor]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_bookSearchByAuthor]
	@text nvarchar(50)
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where tg.HoTenTG like '%'+@text+'%'
	and s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchByCategory]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_bookSearchByCategory]
	@text nvarchar(50)
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where cd.TenCD like '%'+@text+'%'
	and s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchByPublisher]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_bookSearchByPublisher]
	@text nvarchar(50)
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where nxb.TenNXB like '%'+@text+'%'
	and s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchByStock]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_bookSearchByStock]
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where s.SoLuongTon = 0
	and s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end

GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchByTitle]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================== 
CREATE procedure [dbo].[proc_bookSearchByTitle] 
	@text nvarchar(50)
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where s.TenSach like '%'+@text+'%'
	and s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end

GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchToCombobox]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_bookSearchToCombobox]
	@text nvarchar(50)
as
begin
	select s.TenSach 
	from Sach s
	where s.TenSach like '%'+@text+'%'
end

GO
/****** Object:  StoredProcedure [dbo].[proc_bookSearchToSell]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_bookSearchToSell]
	@text nvarchar(50)
as
begin
	select tg.HoTenTG,  nxb.TenNXB, s.GiaBan, s.SoLuongTon
	from Sach s, TacGia tg, NhaXuatBan nxb, ThamGia thamgia
	where s.TenSach like '%'+@text+'%'
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_deleteSach]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_deleteSach]
	@id int
as
begin
	delete from Sach where ID = @id
end

GO
/****** Object:  StoredProcedure [dbo].[proc_expense]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_expense]
as
begin
	select pn.ID, pn.TieuDe, pn.TongTien, pn.NgayNhap, pn.MoTa
	from PhieuNhap pn
	order by pn.ID desc
end
exec proc_expense
GO
/****** Object:  StoredProcedure [dbo].[proc_expense1]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =====================
create  proc [dbo].[proc_expense1]
as
begin
	select pn.ID, pn.TieuDe, pn.TongTien, pn.NgayNhap, pn.MoTa, pn.TrangThai
	from PhieuNhap pn
	order by pn.ID desc
end
GO
/****** Object:  StoredProcedure [dbo].[proc_expenseDetails]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_expenseDetails]
	@maphieunhap int
as
begin
	select s.TenSach, ctpn.SoLuong
	from PhieuNhap pn, ChiTietPhieuNhap ctpn, Sach s
	where pn.ID = @maphieunhap
	and ctpn.MaPhieuNhap = @maphieunhap
	and s.ID = ctpn.MaSach
	order by pn.ID desc
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getAuthorNamrFromBookTitle]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_getAuthorNamrFromBookTitle]
	@bookTitle nvarchar(50)
as
begin
	select tg.HoTenTG
	from Sach s, ThamGia thamgia, TacGia tg
	where s.TenSach like '%'+@bookTitle+'%'
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_getidbookbyname]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[proc_getidbookbyname]
	@name nvarchar(50)
 as 
 begin 
	select ID from Sach
	where TenSach = @name
 end
GO
/****** Object:  StoredProcedure [dbo].[proc_getIdCustomerFromName]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_getIdCustomerFromName]
	@name nvarchar(50)
as
begin
	select ID from KhachHang where HoTen = @name
end
GO
/****** Object:  StoredProcedure [dbo].[proc_getPublisherNameFromBookTitle]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================
CREATE procedure [dbo].[proc_getPublisherNameFromBookTitle]
	@bookTitle nvarchar(50)
as
begin
	select nxb.TenNXB
	from Sach s, NhaXuatBan nxb
	where s.TenSach like '%'+@bookTitle+'%'
	and s.MaNXB = nxb.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_gridExpense]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_gridExpense]
as
begin
	select pn.TieuDe, pn.TongTien, pn.NgayNhap, s.TenSach, ctpn.SoLuong
	from PhieuNhap pn, ChiTietPhieuNhap ctpn, Sach s
	where pn.ID = ctpn.MaPhieuNhap
	and s.ID = ctpn.MaSach
	order by pn.ID desc
end
GO
/****** Object:  StoredProcedure [dbo].[proc_info]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_info]
as 
begin
	select dh.ID, kh.HoTen, dh.NgayDat, dh.NgayGiao, dh.TongTien
	from DonHang dh, KhachHang kh
	where dh.MaKH = kh.ID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_info_details]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_info_details] 
	@madh int
as
begin
	select ctdh.MaSach, s.TenSach, ctdh.SoLuong
	from DonHang dh, ChiTietDonHang ctdh,Sach s
	where ctdh.MaDH = @madh
	and dh.ID = ctdh.MaDH
	and ctdh.MaSach = s.ID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertChiTietPhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_insertChiTietPhieuNhap]
	@idphieunhap int,
	@idsach int,
	@soluong int
as
begin
	insert into ChiTietPhieuNhap (MaPhieuNhap, MaSach, SoLuong)
	values (@idphieunhap, @idsach, @soluong)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_insertPhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_insertPhieuNhap]
	@tongtien int,
	@tieude nvarchar(200),
	@mota nvarchar(200),
	@trangthai bit
as
begin
	insert into PhieuNhap (NgayNhap, TongTien, TieuDe, MoTa, TrangThai)
	values(
	GETDATE(), @tongtien, @tieude, @mota, @trangthai
	)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertTacGia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_insertTacGia]
	@ten nvarchar(50),
	@diachi nvarchar(50),
	@tieusu nvarchar(200),
	@dienthoai nvarchar(50)
as
begin
	insert into TacGia (HoTenTG, DiaChi, TieuSu, DienThoai)
	values  (@ten, @diachi, @tieusu, @dienthoai)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_insertToCart]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[proc_insertToCart]
	@booktitle nvarchar(50),
	@qty int, 
	@price int,
	@amount int,
	@stock int
as
begin
	insert into GioHang (BookTitle, Qty, Price, Amount, Stock)
	values (@booktitle, @qty, @price, @amount, @stock)
end 
GO
/****** Object:  StoredProcedure [dbo].[proc_listAuthor]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_listAuthor]
as
begin
	select ID, HoTenTG, DiaChi, TieuSu, DienThoai from TacGia
end
GO
/****** Object:  StoredProcedure [dbo].[proc_listCategory]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_listCategory]
as
begin
	select ID, TenCD from ChuDe
end
GO
/****** Object:  StoredProcedure [dbo].[proc_listID_PhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_listID_PhieuNhap]
as
begin
	select ID from PhieuNhap
end

GO
/****** Object:  StoredProcedure [dbo].[proc_listNXB]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_listNXB]
as
begin
	select ID, TenNXB, DiaChi, DienThoai from NhaXuatBan
end
GO
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_login]
	@username varchar(50),
	@password varchar(50)
as
begin
	declare @count int
	declare @res bit
	select @count = count(*) from dbo.[User] u
	where Username = @username 
	and Password = @password
	if @count > 0
		set @res = 1
	else
		set @res = 0
	select @res
end
GO
/****** Object:  StoredProcedure [dbo].[proc_monthAmount]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_monthAmount]
	@month int
as 
begin
	select SUM(TongTien) as soluong from DonHang
	where MONTH(NgayDat) = @month
end
GO
/****** Object:  StoredProcedure [dbo].[proc_purchasedBooks]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================
CREATE proc [dbo].[proc_purchasedBooks]
as
begin 
	select SUM(SoLuong) as soluong from ChiTietPhieuNhap
end
GO
/****** Object:  StoredProcedure [dbo].[proc_returnIDfromBookTitle]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_returnIDfromBookTitle]
	@booktitle nvarchar(50)
as
begin
	declare @id int
	select @id = s.ID from Sach s
	where s.TenSach like '%'+@booktitle+'%'
	return @id
end

GO
/****** Object:  StoredProcedure [dbo].[proc_searchCustomerName]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_searchCustomerName]
	@name nvarchar(50)
as
begin
	select kh.HoTen from KhachHang kh
	where kh.HoTen like '%'+@name+'%'
end


GO
/****** Object:  StoredProcedure [dbo].[proc_soldBooks]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =================================
CREATE proc [dbo].[proc_soldBooks]
as
begin 
	select SUM(SoLuong) as soluong from ChiTietDonHang
end
GO
/****** Object:  StoredProcedure [dbo].[proc_suaTacgia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_suaTacgia]
	@id int,
	@hoten varchar(50),
	@diachi varchar(50),
	@tieusu nvarchar(50),
	@dienthoai varchar(50)
as 
begin
	UPDATE dbo.[TacGia]
	SET HoTenTG = @hoten, DiaChi = @diachi, TieuSu = @tieusu, DienThoai = @dienthoai
	WHERE ID = @id
end
GO
/****** Object:  StoredProcedure [dbo].[proc_suaUser]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================
create proc [dbo].[proc_suaUser]
	@id int,
	@username varchar(50),
	@password varchar(50),
	@fullname nvarchar(50),
	@role varchar(50)
as 
begin
	UPDATE dbo.[User]
	SET Username = @username, Password = @password, Fullname = @fullname, Role = @role
	WHERE ID = @id
end
GO
/****** Object:  StoredProcedure [dbo].[proc_themChuDeMoi]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_themChuDeMoi]
	@tencd nvarchar(50)
as
begin
	insert into ChuDe(TenCD)
	values (@tencd)
end


GO
/****** Object:  StoredProcedure [dbo].[proc_themNhaXuatBanMoi]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================
CREATE procedure [dbo].[proc_themNhaXuatBanMoi]
	@tennxb nvarchar(50),
	@diachi nvarchar(50),
	@dienthoai nvarchar(50)
as
begin
	insert into NhaXuatBan(TenNXB, DiaChi, DienThoai)
	values (@tennxb, @diachi, @dienthoai)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_themSachMoi]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================
CREATE procedure [dbo].[proc_themSachMoi] 
	@tensach nvarchar(50),
	@giaban int,
	@soluongton int,
	@manxb int,
	@machude int
as
begin
	insert into Sach(TenSach, GiaBan, NgayCapNhat, SoLuongTon, MaNXB, MaCD)
	values (@tensach, @giaban, GETDATE(), @soluongton, @manxb, @machude) 
end

GO
/****** Object:  StoredProcedure [dbo].[proc_themTacgia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_themTacgia]
	@hoten varchar(50),
	@diachi varchar(50),
	@tieusu nvarchar(50),
	@dienthoai varchar(50)
as 
begin
	insert into TacGia(HoTenTG, DiaChi, TieuSu, DienThoai)
	values(@hoten, @diachi, @tieusu, @dienthoai)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_themTacGiaMoi]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================
CREATE procedure [dbo].[proc_themTacGiaMoi]
	@hoten nvarchar(50),
	@diachi nvarchar(50),
	@tieusu nvarchar(50),
	@dienthoai nvarchar(50)
as
begin
	insert into TacGia(HoTenTG, DiaChi, TieuSu, DienThoai)
	values (@hoten, @diachi, @tieusu, @dienthoai)
end

GO
/****** Object:  StoredProcedure [dbo].[proc_themUser]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_themUser] 
	@username varchar(50),
	@password varchar(50),
	@fullname nvarchar(50),
	@role varchar(50)
as 
begin
	insert into dbo.[User] (Username, Password, Fullname, Role)
	values(@username, @password, @fullname, @role)
end
GO
/****** Object:  StoredProcedure [dbo].[proc_updateChiTietPhieuNhap]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_updateChiTietPhieuNhap]
	@idPhieuNhap int,
	@idSach int,
	@soLuong int
as
begin
	update ChiTietPhieuNhap set 
	SoLuong += @soLuong
	where MaPhieuNhap = @idPhieuNhap and MaSach =  @idSach
end
GO
/****** Object:  StoredProcedure [dbo].[proc_updateSoLuongTon]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_updateSoLuongTon]
	@id int,
	@soluong int
as 
begin
	update Sach 
	set SoLuongTon -= @soluong
	where ID = @id
end

GO
/****** Object:  StoredProcedure [dbo].[proc_updateSoLuongTon_nhapHang]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_updateSoLuongTon_nhapHang] -- update khi nhập hàng
	@id int, 
	@soluong int
as 
begin
	update Sach 
	set SoLuongTon += @soluong
	where ID = @id
end

GO
/****** Object:  StoredProcedure [dbo].[proc_xemTatCaSach]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_xemTatCaSach]
as
begin
	select s.TenSach, s.GiaBan, s.SoLuongTon, tg.HoTenTG, cd.TenCD, nxb.TenNXB
	from Sach s, TacGia tg, NhaXuatBan nxb, ChuDe cd, ThamGia thamgia
	where s.MaCD = cd.ID
	and s.MaNXB = nxb.ID
	and s.ID = thamgia.MaSach
	and thamgia.MaTG = tg.ID
end


GO
/****** Object:  StoredProcedure [dbo].[proc_xoaTacgia]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_xoaTacgia]
	@id int
as 
begin
	delete from TacGia where ID = @id
 end
GO
/****** Object:  StoredProcedure [dbo].[proc_xoaUser]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===================
create proc [dbo].[proc_xoaUser]
	@id int
as 
begin
	delete from dbo.[User] where ID = @id
end
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[test]
@test nvarchar(50)
as
begin
	select * from Sach
	where TenSach like '%'+@test+'%'
end

GO
/****** Object:  StoredProcedure [dbo].[thongkeDH]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[thongkeDH] @mDH int as
begin
	select Sach.TenSach as N'Tên sách', ct.SoLuong as N'Số lượng' 
	from dbo.ChiTietDonHang ct join Sach on ct.MaSach=Sach.ID where ct.MaDH=@mDH
end

GO
/****** Object:  StoredProcedure [dbo].[thongkeKH]    Script Date: 6/3/2021 5:07:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[thongkeKH] as
begin
	select kh.HoTen as N'Họ tên',dh.NgayDat as N'Ngày mua',dh.TongTien as N'Tổng tiền' 
	from dbo.KhachHang kh join dbo.DonHang dh on kh.ID=dh.MaKH
	group by NgayDat, HoTen, TongTien
end

GO
USE [master]
GO
ALTER DATABASE [QuanLyBanSach_new] SET  READ_WRITE 
GO

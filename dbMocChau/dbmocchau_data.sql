USE [master]
GO
/****** Object:  Database [QLSuaMocChau]    Script Date: 29/09/2021 10:18:12 CH ******/
CREATE DATABASE [QLSuaMocChau]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSuaMocChau', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLSuaMocChau.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSuaMocChau_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLSuaMocChau_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLSuaMocChau] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSuaMocChau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSuaMocChau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLSuaMocChau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSuaMocChau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSuaMocChau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSuaMocChau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSuaMocChau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSuaMocChau] SET  MULTI_USER 
GO
ALTER DATABASE [QLSuaMocChau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSuaMocChau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSuaMocChau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSuaMocChau] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSuaMocChau] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSuaMocChau] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLSuaMocChau] SET QUERY_STORE = OFF
GO
USE [QLSuaMocChau]
GO
/****** Object:  Table [dbo].[LoHang]    Script Date: 29/09/2021 10:18:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoHang](
	[MaLoHang] [int] IDENTITY(1,1) NOT NULL,
	[TenLoHang] [nvarchar](50) NULL,
	[NgaySanXuat] [datetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoHang] PRIMARY KEY CLUSTERED 
(
	[MaLoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 29/09/2021 10:18:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nchar](30) NULL,
	[MatKhau] [nchar](20) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaVaiTro] [int] NULL,
	[SoE] [nvarchar](500) NULL,
	[SoN] [nvarchar](500) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyTrinh]    Script Date: 29/09/2021 10:18:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyTrinh](
	[MaQuyTrinh] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyTrinh] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaSanPham] [int] NULL,
	[ChuKi] [nvarchar](max) NULL,
	[MaNguoiDung] [int] NULL,
	[NgayKy] [datetime] NULL,
	[TrangThai] [int] NULL,
	[MaLoHang] [int] NULL,
	[TepTinChungThuc] [nvarchar](max) NULL,
	[TrangThaiXacThuc] [int] NULL,
 CONSTRAINT [PK_QuyTrinh] PRIMARY KEY CLUSTERED 
(
	[MaQuyTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 29/09/2021 10:18:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nchar](50) NULL,
	[MaLoHang] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 29/09/2021 10:18:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[MaVaitro] [int] IDENTITY(1,1) NOT NULL,
	[VaiTro] [nvarchar](100) NULL,
	[ThongTinKhoa] [nvarchar](500) NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[MaVaitro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoHang] ON 

INSERT [dbo].[LoHang] ([MaLoHang], [TenLoHang], [NgaySanXuat], [GhiChu]) VALUES (3, N'Lô hàng quý 3', CAST(N'2020-06-01T00:00:00.000' AS DateTime), N'HSD: 1 năm kể từ ngày SX	')
SET IDENTITY_INSERT [dbo].[LoHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (1, N'admin                         ', N'123456              ', N'Quản lý hệ thống', 1, NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (2, N'nhasanxuat                    ', N'123456              ', N'Nhà sản xuất sữa', 3, NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (3, N'quanlythitruong               ', N'123456              ', N'Quản lý thị trường', 2, NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (4, N'viendinhduong                 ', N'123456              ', N'Viện Dinh Dưỡng', 2, N'23400800745752929143897981870643078188403867077281987024144401375523206196856330980710670098411156580503823', N'6741059652995649175895318332645534465527420637224140017965754413413630825630869602868715833461896253195951150095395733703405825445912376085109949516268409')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (5, N'cucchannuoi                   ', N'123456              ', N'Cục chăn nuôi', 2, N'7722303467', N'4166515856989518073529287089161066214068948821021925050733329506771000028389800895812969002105728279673573870302844298155774788812633119664683836337373167')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (6, N'vienattt                      ', N'123456              ', N'Viện An Toàn Thực Phẩm', 2, N'42846023448108519868020851298692282266666437', N'4772308149480918566921877403584356138644464792452058895735695361806510662213802493199444785443954504862831106477351368667395545848438105970943559683670449')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (7, N'nhasanxuat2                   ', N'123456              ', N'Nhà SX Sữa', 3, NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TaiKhoan], [MatKhau], [MoTa], [MaVaiTro], [SoE], [SoN]) VALUES (8, N'kiemdinh1                     ', N'123456              ', N'Kiểm định 1', 2, N'640064118628630601877662296256506806118623075484677250513557134045645773273486850238092742832875989371664635865821237564387461940836872222835605441', N'9694246452509616881389394048151936140728319299886901816030746381585176619895456178551715292821737829272047338261726841065133859998886127985712293991713869')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[QuyTrinh] ON 

INSERT [dbo].[QuyTrinh] ([MaQuyTrinh], [TenQuyTrinh], [MoTa], [MaSanPham], [ChuKi], [MaNguoiDung], [NgayKy], [TrangThai], [MaLoHang], [TepTinChungThuc], [TrangThaiXacThuc]) VALUES (17, N'Quy trình chăn nuôi', NULL, 5, N'1419071465854478245639247857879041711493402543450356833139662961497657173709732947087940932213064883331857522302622158535199637699040059309797148551576526', 4, NULL, 2, 3, N'/Images/files/mc.png', 0)
INSERT [dbo].[QuyTrinh] ([MaQuyTrinh], [TenQuyTrinh], [MoTa], [MaSanPham], [ChuKi], [MaNguoiDung], [NgayKy], [TrangThai], [MaLoHang], [TepTinChungThuc], [TrangThaiXacThuc]) VALUES (18, N'Quy trình lấy sữa', NULL, 5, N'7158611943331517297843381281570099320447702158956790464963642009707954870536418226493858789788810700325386111018692554512795455518822191230937119594902742', 4, NULL, 2, 3, N'/Images/files/qtlaysua.png', 0)
INSERT [dbo].[QuyTrinh] ([MaQuyTrinh], [TenQuyTrinh], [MoTa], [MaSanPham], [ChuKi], [MaNguoiDung], [NgayKy], [TrangThai], [MaLoHang], [TepTinChungThuc], [TrangThaiXacThuc]) VALUES (19, N'Quy trình chế biến sữa', NULL, 5, N'7145899020828356661619492106961763041112385060294845749214658964062587593401635467746632083064419810623821521878941076978566190777061594953309554435139457', 8, NULL, 1, 3, N'/Images/files/qtchebien1.png', 1)
INSERT [dbo].[QuyTrinh] ([MaQuyTrinh], [TenQuyTrinh], [MoTa], [MaSanPham], [ChuKi], [MaNguoiDung], [NgayKy], [TrangThai], [MaLoHang], [TepTinChungThuc], [TrangThaiXacThuc]) VALUES (20, N'Quy trình đóng gói và bảo quản', NULL, 5, N'5976488372248012204993844491647587092939536686762729023719189332727111917746136179196298223361233772787022651075470216863885982112865583403179190755727021', 8, NULL, 1, 3, N'/Images/files/qtdonggoi.png', 1)
SET IDENTITY_INSERT [dbo].[QuyTrinh] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [HinhAnh], [MaLoHang], [TrangThai]) VALUES (5, N'Sữa tiệt trùng', NULL, N'/Images/files/tiettrung.jpg                       ', 3, NULL)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [HinhAnh], [MaLoHang], [TrangThai]) VALUES (6, N'Sữa thanh trùng', NULL, N'/Images/files/thanhtrungchai.jpg                  ', 3, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([MaVaitro], [VaiTro], [ThongTinKhoa]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[VaiTro] ([MaVaitro], [VaiTro], [ThongTinKhoa]) VALUES (2, N'Cơ quan kiểm Định', NULL)
INSERT [dbo].[VaiTro] ([MaVaitro], [VaiTro], [ThongTinKhoa]) VALUES (3, N'Nhà sản xuất', NULL)
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_VaiTro] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VaiTro] ([MaVaitro])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_VaiTro]
GO
ALTER TABLE [dbo].[QuyTrinh]  WITH CHECK ADD  CONSTRAINT [FK_QuyTrinh_LoHang] FOREIGN KEY([MaLoHang])
REFERENCES [dbo].[LoHang] ([MaLoHang])
GO
ALTER TABLE [dbo].[QuyTrinh] CHECK CONSTRAINT [FK_QuyTrinh_LoHang]
GO
ALTER TABLE [dbo].[QuyTrinh]  WITH CHECK ADD  CONSTRAINT [FK_QuyTrinh_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[QuyTrinh] CHECK CONSTRAINT [FK_QuyTrinh_NguoiDung]
GO
ALTER TABLE [dbo].[QuyTrinh]  WITH CHECK ADD  CONSTRAINT [FK_QuyTrinh_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[QuyTrinh] CHECK CONSTRAINT [FK_QuyTrinh_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoHang] FOREIGN KEY([MaLoHang])
REFERENCES [dbo].[LoHang] ([MaLoHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoHang]
GO
USE [master]
GO
ALTER DATABASE [QLSuaMocChau] SET  READ_WRITE 
GO

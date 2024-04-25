USE [master]
GO
/****** Object:  Database [VehicleMonitoringDB]    Script Date: 25/04/2024 04:12:21 ******/
CREATE DATABASE [VehicleMonitoringDB]
 
GO
ALTER DATABASE [VehicleMonitoringDB] SET COMPATIBILITY_LEVEL = 160
GO

USE [VehicleMonitoringDB]
GO
/****** Object:  Table [dbo].[GPSData]    Script Date: 25/04/2024 04:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSData](
	[GPSDataID] [bigint] IDENTITY(1,1) NOT NULL,
	[VehicleID] [bigint] NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[DateAndTimeInserted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GPSDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeedMeasurements]    Script Date: 25/04/2024 04:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeedMeasurements](
	[SpeedID] [bigint] IDENTITY(1,1) NOT NULL,
	[VehicleID] [bigint] NULL,
	[SpeedInKmPerHour] [decimal](7, 2) NULL,
	[DateAndTimeInserted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 25/04/2024 04:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](255) NOT NULL,
	[Model] [nvarchar](255) NOT NULL,
	[Year] [int] NULL,
	[LicensePlate] [nvarchar](20) NOT NULL,
	[VIN] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[OwnerName] [nvarchar](255) NOT NULL,
	[OwnerContactAddress] [nvarchar](max) NOT NULL,
	[OwnerPhoneNumber] [nvarchar](50) NOT NULL,
	[OwnerEmail] [nvarchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GPSData] ON 
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (1, 1, CAST(40.712800 AS Decimal(9, 6)), CAST(-74.006000 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (2, 2, CAST(34.052200 AS Decimal(9, 6)), CAST(-118.243700 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (3, 3, CAST(41.878100 AS Decimal(9, 6)), CAST(-87.629800 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (4, 4, CAST(29.760400 AS Decimal(9, 6)), CAST(-95.369800 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (5, 5, CAST(34.052200 AS Decimal(9, 6)), CAST(-118.243700 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (6, 6, CAST(40.712800 AS Decimal(9, 6)), CAST(-74.006000 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (7, 7, CAST(34.052200 AS Decimal(9, 6)), CAST(-118.243700 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (8, 8, CAST(41.878100 AS Decimal(9, 6)), CAST(-87.629800 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (9, 9, CAST(29.760400 AS Decimal(9, 6)), CAST(-95.369800 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
INSERT [dbo].[GPSData] ([GPSDataID], [VehicleID], [Latitude], [Longitude], [DateAndTimeInserted]) VALUES (10, 10, CAST(40.712800 AS Decimal(9, 6)), CAST(-74.006000 AS Decimal(9, 6)), CAST(N'2024-04-25T03:59:26.757' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[GPSData] OFF
GO
SET IDENTITY_INSERT [dbo].[SpeedMeasurements] ON 
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (1, 1, CAST(30.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (2, 2, CAST(60.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (3, 3, CAST(150.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (4, 4, CAST(40.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (5, 5, CAST(10.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (6, 6, CAST(90.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (7, 7, CAST(200.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (8, 8, CAST(55.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (9, 9, CAST(20.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
INSERT [dbo].[SpeedMeasurements] ([SpeedID], [VehicleID], [SpeedInKmPerHour], [DateAndTimeInserted]) VALUES (10, 10, CAST(120.00 AS Decimal(7, 2)), CAST(N'2024-04-25T03:59:26.767' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SpeedMeasurements] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (1, N'Ford', N'Focus', 2015, N'ABC123', N'1234567890', N'Blue', N'John Doe', N'123 Main St, City, Country', N'123-456-7890', N'john.doe@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (2, N'Toyota', N'Camry', 2018, N'DEF456', N'0987654321', N'Silver', N'Jane Smith', N'456 Oak St, City, Country', N'987-654-3210', N'jane.smith@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (3, N'Honda', N'Civic', 2017, N'GHI789', N'9876543210', N'Red', N'David Brown', N'789 Elm St, City, Country', N'456-789-0123', N'david.brown@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (4, N'Chevrolet', N'Malibu', 2016, N'JKL012', N'0123456789', N'Black', N'Emily Johnson', N'101 Pine St, City, Country', N'789-012-3456', N'emily.johnson@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (5, N'BMW', N'3 Series', 2019, N'MNO345', N'3456789012', N'White', N'Michael Williams', N'555 Cedar St, City, Country', N'234-567-8901', N'michael.williams@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (6, N'Mercedes-Benz', N'C-Class', 2020, N'PQR678', N'2345678901', N'Gray', N'Sarah Davis', N'777 Maple St, City, Country', N'567-890-1234', N'sarah.davis@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (7, N'Audi', N'A4', 2018, N'STU901', N'7890123456', N'Green', N'Chris Taylor', N'999 Walnut St, City, Country', N'890-123-4567', N'chris.taylor@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (8, N'Hyundai', N'Elantra', 2019, N'VWX234', N'4567890123', N'Silver', N'Amy Martinez', N'111 Birch St, City, Country', N'012-345-6789', N'amy.martinez@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (9, N'Nissan', N'Altima', 2017, N'YZA567', N'5678901234', N'Blue', N'Kevin Anderson', N'222 Spruce St, City, Country', N'345-678-9012', N'kevin.anderson@example.com')
GO
INSERT [dbo].[Vehicle] ([VehicleID], [Make], [Model], [Year], [LicensePlate], [VIN], [Color], [OwnerName], [OwnerContactAddress], [OwnerPhoneNumber], [OwnerEmail]) VALUES (10, N'Kia', N'Optima', 2016, N'BCD890', N'6789012345', N'Black', N'Laura Wilson', N'333 Oak St, City, Country', N'678-901-2345', N'laura.wilson@example.com')
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
ALTER TABLE [dbo].[GPSData]  WITH CHECK ADD FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
ALTER TABLE [dbo].[SpeedMeasurements]  WITH CHECK ADD FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
USE [master]
GO
ALTER DATABASE [VehicleMonitoringDB] SET  READ_WRITE 
GO

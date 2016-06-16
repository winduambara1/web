-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2016 at 02:11 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kd_barang` varchar(5) NOT NULL,
  `nama_barang` text NOT NULL,
  `stok` int(20) NOT NULL,
  `tgl_update_stok` date NOT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_laundry`
--

CREATE TABLE IF NOT EXISTS `jenis_laundry` (
  `id_jenis_laundry` varchar(5) NOT NULL,
  `nama_jenis_laundry` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jenis_laundry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `NIK` varchar(20) NOT NULL,
  `nama_karyawan` tinytext,
  `alamat_karyawan` tinytext,
  `telepon_karyawan` tinytext,
  `gender_karyawan` tinytext,
  PRIMARY KEY (`NIK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `kode_konsumen` varchar(20) NOT NULL DEFAULT '',
  `nama_konsumen` tinytext,
  `alamat_konsumen` tinytext,
  `telepon_konsumen` tinytext,
  PRIMARY KEY (`kode_konsumen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(20) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type_user` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemakaian_barang`
--

CREATE TABLE IF NOT EXISTS `pemakaian_barang` (
  `kd_pengeluaran` varchar(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`kd_pengeluaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no_pembelian` varchar(5) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `total_biaya` int(10) NOT NULL,
  PRIMARY KEY (`no_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rincian_pembelian`
--

CREATE TABLE IF NOT EXISTS `rincian_pembelian` (
  `no_rincian` int(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`no_rincian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rincian_transaksi`
--

CREATE TABLE IF NOT EXISTS `rincian_transaksi` (
  `id_rincian` varchar(5) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`id_rincian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(5) NOT NULL,
  `nama_supplier` varchar(20) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `telp_supplier` int(15) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
  `id_jenis_pakaian` varchar(5) NOT NULL,
  `nama_pakaian` varchar(20) NOT NULL,
  `tarif` int(10) NOT NULL,
  PRIMARY KEY (`id_jenis_pakaian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_transaksi` int(5) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `diskon` int(5) NOT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

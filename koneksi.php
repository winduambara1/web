<?php
	class koneksidatabase{
		private $server="localhost";
		private $user="root";
		private $password="";
		private $db="laundry";
		public $koneksidb;

		public $lokasi="";
		public $lokasi_service="";
		public $sql;
		public $error;
		public $halaman;
		public $result;
		public $page="frontend";

		public function koneksi(){
			$this->koneksidb = mysqli_connect($this->server, $this->user, $this->password, $this->db) or die (mysqli_error($this->koneksidb));
		}
		public function eksekusi(){
			$this->result = mysqli_query($this->koneksidb, $this->sql);
			$this->error = mysqli_error($this->koneksidb);
			return $this->result;
		}

		public function last_id(){
			return mysqli_insert_id($this->koneksidb);
		}

		public function fetch(){
			return mysqli_fetch_array($this->result);
		}

		public function num_rows(){
			return mysqli_num_rows($this->result);
		}

	}
?>
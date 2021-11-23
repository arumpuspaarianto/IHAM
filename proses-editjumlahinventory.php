<?php  
   require_once('connect.php');

   	 
   	if(!empty($_POST['KODE_RFID'])){
   		$KODE_RFID = $_POST['KODE_RFID'];
   		$NAMA_BARANG = $_POST['NAMA_BARANG'];
   		$LOKASI_PENYIMPANAN = $_POST['LOKASI_PENYIMPANAN'];
   		$TERPAKAI = $_POST['TERPAKAI'];
   		$TERSEDIA = $_POST['TERSEDIA'];
   		$KETERANGAN = $_POST['KETERANGAN'];
   		$id = $_POST['ID'];
		
   		$data[] = $KODE_RFID;
   		$data[] = $NAMA_BARANG;
   		$data[] = $LOKASI_PENYIMPANAN;
   		$data[] = $TERPAKAI;
   		$data[] = $TERSEDIA;
   		$data[] = $KETERANGAN;
   		$data[] = $id;
	
		
   		$sql = "UPDATE `tb_jumlah_inventory` SET KODE_RFID=?,NAMA_BARANG=?,LOKASI_PENYIMPANAN=?,TERPAKAI=?,TERSEDIA=?,KETERANGAN=? WHERE id=?";
   		$row = $dbh->prepare($sql);
   		$row->execute($data);
		
   		echo '<script>alert("Berhasil Edit Data");window.location="index.php?halaman=jumlah-peralatanmedis"</script>';
	   }
   
   	$id = $_GET['id'];
   	$sql = "SELECT *FROM `tb_jumlah_inventory` WHERE ID= ?";
   	$row = $dbh->prepare($sql);
   	$row->execute(array($id));
   	$result = $row->fetch();
   ?>
   <!DOCTYPE HTML>
   <html>
   	<head>
   		<title>Edit - <?php echo $result['KODE_RFID'];?></title>
   		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   	</head>
   	<body>
   		<div class="container">
   			 <br/>
   			 <h3>Edit - <?php echo $result['KODE_RFID'];?></h3>
   			 <br/>
   			<div class="row">
   				 <div class="col-lg-6">
   					 <form action="" method="POST">
   						 <div class="form-group">
   							 <label>KODE RFID</label>
   							 <input type="text" value="<?php echo $result['KODE_RFID'];?>" class="form-control" name="KODE_RFID">
   						 </div>
   						 <div class="form-group">
   							 <label>NAMA BARANG</label>
   							 <input type="text" value="<?php echo $result['NAMA_BARANG'];?>" class="form-control" name="NAMA_BARANG">
   						 </div>
   						 <div class="form-group">
   							 <label>LOKASI PENYIMPANAN</label>
   							 <input type="text" value="<?php echo $result['LOKASI_PENYIMPANAN'];?>" class="form-control" name="LOKASI_PENYIMPANAN">
   						 </div>
   						 <div class="form-group">
   							 <label>TERPAKAI</label>
   							 <input type="text" value="<?php echo $result['TERPAKAI'];?>" class="form-control" name="TERPAKAI">
   						 </div>
   						 <div class="form-group">
   							 <label>TERSEDIA</label>
   							 <input type="text" value="<?php echo $result['TERSEDIA'];?>" class="form-control" name="TERSEDIA">
   						 </div>
   						 <div class="form-group">
   							 <label>KETERANGAN</label>
   							 <input type="text" value="<?php echo $result['KETERANGAN'];?>" class="form-control" name="KETERANGAN">
   						 </div>
   						 <input type="hidden" value="<?php echo $result['ID'];?>" name="ID">
   						 <button class="btn btn-primary btn-md" name="create"><i class="fa fa-edit"> </i> Update</button>
   					 </form>
   				  </div>
   			</div>
   		</div>
   	</body>
   </html>
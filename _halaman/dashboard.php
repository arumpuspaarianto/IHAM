<?php
 $title="Dashboard";
 require_once 'connect.php';
?>
<div class="container-fluid">
    <div class="form-head d-flex mb-2 align-items-start">
		<div class="mr-auto d-none d-lg-block">
			<h3 class="text-primary font-w600">Welcome to Integrated Hospital Asset Management</h3>
			<p class="mb-0">Quick Access</p>
		</div>
    </div>	
	<div class="row">
	    <div class="col-xl-4 col-lg-4 col-sm-4">
            <a href="<?=url('clinicalmng-pasien#log-data-pasien')?>">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="fas fa-procedures"></i>
                        </span>
                        <div class="media-body">
                            <p class="mb-1">Log Data</p>
                            <h5 class="mb-0">Pasien</h5>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
            </a>
            
        </div>
        <div class="col-xl-4 col-lg-4 col-sm-4">
            <a href="<?=url('clinicalmng-nakes#log-data-nakes')?>">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="fas fa-user-md"></i>
			            </span>
                        <div class="media-body">
                            <p class="mb-1">Log Data</p>
                            <h5 class="mb-0">Tenaga Kesehatan</h5>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
            </a>
        </div>
		<div class="col-xl-4 col-lg-4 col-sm-4">
            <a href="<?=url('clinicalmng-inventory#aset-terpakai')?>">
            <div class="widget-stat card">
                <div class="card-body p-4">
                    <div class="media ai-icon">
                        <span class="mr-3 bgl-warning text-info">
							<i class="fas fa-medkit"></i>
                        </span>
                        <div class="media-body">
                            <p class="mb-1">Riwayat</p>
                            <h5 class="mb-0">Peminjaman Aset</h5>
                            <!-- <span class="badge badge-warning">+250</span> -->
                        </div>
                    </div>
                </div>
            </div>
            </a>
        </div>
        <div class="col-xl-12 col-xxl-12 col-lg-12 col-md-12">
			<div class="card">
				<div class="card-header border-0 pb-0">
					<h4 class="card-title">Patients (%)</h4>
				</div>
				<div class="card-body pt-2">
					<h4 class="text-dark font-w400">Total Patient</h4>
					<h3 class="text-primary font-w600">562,084 People</h3>
					<div class="row mx-0 align-items-center">
						<div class="col-sm-8 col-md-7  px-0">
                            <canvas id="myChart" width="400" height="400"></canvas>
						</div>
						<div class="col-sm-4 col-md-5 px-0">
							<div class="patients-chart-deta">
								<div class="col px-0">
									<span class="bg-danger"></span>	
							        <div>
									    <p>New</p>
									    <h3>64%</h3>
								    </div>
								</div>
								<div class="col px-0">
									<span class="bg-success"></span>	
									<div>
										<p>Recovered</p>
										<h3>73%</h3>
									</div>
								</div>
								<div class="col px-0">
									<span class="bg-warning"></span>	
								    <div>
										<p>In Treatment</p>
										<h3>48%</h3>
									</div>
								</div>
							</div>
						</div>
					</div>				
				</div>
			</div>
		</div>
    </div>
</div>
<div class="content-body">
    <div class="container-fluid">
        <div class="page-titles">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Riwayat Informasi</a></li>
                <li class="breadcrumb-item active"><a href="javascript:void(0)">Dashboard</a></li>
            </ol>
        </div>
        <!-- row -->

        <div class="row">
            <div class="col-xl-12 col-lg-12 col-xxl-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Rincian Pembayaran Terbaru</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table shadow-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Employee</th>
                                        <th scope="col">Type of payment</th>
                                        <th scope="col">Payment date</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($data as $p) : ?>
                                        <?php
                                        // Potongan Alpha
                                        $alfa  = $p->gaji_pokok / 26 * $p->alpha;

                                        $gaji = $p->gaji_pokok;
                                        $tunjangan = $p->tunjangan;

                                        // penghasilan bruto setahun
                                        $bruto_setahun = $gaji + $tunjangan * 12;

                                        // dikurangi biaya jabatan
                                        $jabatan = 0.05 * $bruto_setahun;

                                        $netto = $bruto_setahun - $jabatan;

                                        $pkp = 54000000 - $netto;

                                        $lapis_pertama = 0.05 * 50000000;

                                        $pph = $lapis_pertama / 12;


                                        ?>
                                        <tr>
                                            <td><?= $p->nama ?></td>
                                            <td>Pembayaran Gaji</td>
                                            <td><?php echo date('d F Y', strtotime($p->tgl_payroll)); ?></td>
                                            <td><span class="badge badge-rounded badge-success">Berhasil</span></td>
                                            <td>Rp. <?php echo number_format($p->gaji_pokok + $p->tunjangan - $p->bpjs - $p->pajak, 0, ",", ".") ?></td>
                                            <td><a href="<?php echo base_url('payment/bukti/' . $p->id_payroll) ?>" target="_blank" class="btn btn-sm btn-primary"> <i class="flaticon-381-download"></i>&nbsp; Slip</a></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        @page {
            size: A4;
            margin: 0;
        }

        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 595px;
            /* Ukuran A4 dalam piksel */
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            margin-bottom: 20px;
        }

        .company-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: left;
        }

        .address {
            font-size: 16px;
            text-align: left;
            margin-bottom: 20px;
        }

        .subtitle {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .employee-data {
            margin-bottom: 20px;
        }

        .employee-data p {
            margin-bottom: 5px;
            display: flex;
            align-items: center;
        }

        .info-data p strong {
            width: 120px;
            margin-right: 10px;
        }

        .info-data p span {
            flex-grow: 1;
        }

        .employee-data p strong {
            width: 400px;
            margin-right: 10px;
        }

        .employee-data p span {
            flex-grow: 1;
        }

        .footer {
            text-align: center;
            margin-top: 50px;
        }

        .signature {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .signature p {
            margin: 0;
        }

        .signature p span {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <h1 class="company-name">HUMAN RESOURCE MANAGEMENT SYSTEM</h1>
            <p class="address">Jl. Cisalak Mangga No. 7 RT 02 RW 05<br><br> Kel. Sumur Batu, Kec. Tj Priok.<br><br> Kota Bekasi, 17154.</p>
            <div class="info-data">
                <p><strong>Phone</strong> <span>(0812) 23723145</span></p>
                <p><strong>Fax</strong> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(0821) 12567898</span></p>
            </div>
        </div>
        <br>
        <br>

        <?php foreach ($slip as $row) : ?>

            <?php
            // Potongan Alpha
            $alfa  = $row->gaji_pokok / 26 * $row->alpha;

            $gaji = $row->gaji_pokok;
            $tunjangan = $row->tunjangan;

            // penghasilan bruto setahun
            $bruto_setahun = $gaji + $tunjangan * 12;

            // dikurangi biaya jabatan
            $jabatan = 0.05 * $bruto_setahun;

            $netto = $bruto_setahun - $jabatan;

            $pkp = 54000000 - $netto;

            $lapis_pertama = 0.05 * 50000000;

            $pph = $lapis_pertama / 12;
            ?>

            <div class="subtitle">Slip Gaji Karyawan</div>
            <hr>

            <div class="employee-data">
                <p><strong>Bulan</strong> <span>:&nbsp;&nbsp; <?php echo date('F Y', strtotime($row->waktu_payroll)); ?></span></p>
                <p><strong>Nik</strong> <span>:&nbsp;&nbsp; <?= $row->nip ?></span></p>
                <p><strong>Nama</strong> <span>:&nbsp;&nbsp; <?= $row->nama ?></span></p>
                <p><strong>Jabatan</strong> <span>:&nbsp;&nbsp; <?= $row->nama_jabatan ?> <?= $row->nama_bagian ?></span></p>
                <p><strong>Gaji Pokok</strong> <span>:&nbsp;&nbsp; Rp <?= number_format($row->gaji_pokok) ?></span></p>
                <p><strong>Tunjangan</strong> <span>:&nbsp;&nbsp; Rp <?= number_format($row->tunjangan) ?></span></p>
                <p><strong>Komisi</strong> <span>:&nbsp;&nbsp; -</span></p>
                <p><strong>Potongan BPJS Ketenagakerjaan</strong> <span>:&nbsp;&nbsp; Rp <?= number_format($row->bpjs) ?></span></p>
                <p><strong>Potongan BPJS Kesehatan</strong> <span>:&nbsp;&nbsp; -</span></p>
                <p><strong>Pajak</strong> <span>:&nbsp;&nbsp; Rp <?= number_format($row->pajak) ?></span></p>
                <br>
                <hr>
                <p><strong>Total Gaji Diterima</strong> <span>:&nbsp;&nbsp; <strong>Rp <?= number_format($row->gaji_pokok + $row->tunjangan - $row->bpjs - $row->pajak) ?></strong></span></p>
                <!-- Tambahkan data lainnya sesuai kebutuhan -->
            </div>

        <?php endforeach; ?>

        <br><br>
        <div class="footer">
            <div class="signature">
                <p>
                    Dibuat oleh,<br><br><br><br><br>
                    <span>Admin HR</span>
                </p>
                <p>
                    Mengetahui,<br><br><br><br><br>
                    <span>Atasan</span>
                </p>
            </div>
            <br><br><br><br>
        </div>
    </div>

    <script>
        window.print();
    </script>
</body>

</html>
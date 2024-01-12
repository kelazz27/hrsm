<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title><?= $title ?> - Human Resources Management System</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url('assets') ?>/images/favicon.png">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/vendor/chartist/css/chartist.min.css">
    <link href="<?= base_url('assets') ?>/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="<?= base_url('assets') ?>/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?= base_url('assets') ?>/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<?= base_url('assets') ?>/vendor/select2/css/select2.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/vendor/select2/css/select2.min.css">
</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <a href="index.html" class="brand-logo">
                <img class="brand-title text-center" src="<?= base_url('assets') ?>/logo.png" alt="">
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->


        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="dashboard_bar">
                                <?= $title ?>
                            </div>
                        </div>
                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown notification_dropdown">
                                <a class="nav-link  ai-icon" href="javascript:void(0)" role="button" data-toggle="dropdown">
                                    <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M22.75 15.8385V13.0463C22.7471 10.8855 21.9385 8.80353 20.4821 7.20735C19.0258 5.61116 17.0264 4.61555 14.875 4.41516V2.625C14.875 2.39294 14.7828 2.17038 14.6187 2.00628C14.4546 1.84219 14.2321 1.75 14 1.75C13.7679 1.75 13.5454 1.84219 13.3813 2.00628C13.2172 2.17038 13.125 2.39294 13.125 2.625V4.41534C10.9736 4.61572 8.97429 5.61131 7.51794 7.20746C6.06159 8.80361 5.25291 10.8855 5.25 13.0463V15.8383C4.26257 16.0412 3.37529 16.5784 2.73774 17.3593C2.10019 18.1401 1.75134 19.1169 1.75 20.125C1.75076 20.821 2.02757 21.4882 2.51969 21.9803C3.01181 22.4724 3.67904 22.7492 4.375 22.75H9.71346C9.91521 23.738 10.452 24.6259 11.2331 25.2636C12.0142 25.9013 12.9916 26.2497 14 26.2497C15.0084 26.2497 15.9858 25.9013 16.7669 25.2636C17.548 24.6259 18.0848 23.738 18.2865 22.75H23.625C24.321 22.7492 24.9882 22.4724 25.4803 21.9803C25.9724 21.4882 26.2492 20.821 26.25 20.125C26.2486 19.117 25.8998 18.1402 25.2622 17.3594C24.6247 16.5786 23.7374 16.0414 22.75 15.8385ZM7 13.0463C7.00232 11.2113 7.73226 9.45223 9.02974 8.15474C10.3272 6.85726 12.0863 6.12732 13.9212 6.125H14.0788C15.9137 6.12732 17.6728 6.85726 18.9703 8.15474C20.2677 9.45223 20.9977 11.2113 21 13.0463V15.75H7V13.0463ZM14 24.5C13.4589 24.4983 12.9316 24.3292 12.4905 24.0159C12.0493 23.7026 11.716 23.2604 11.5363 22.75H16.4637C16.284 23.2604 15.9507 23.7026 15.5095 24.0159C15.0684 24.3292 14.5411 24.4983 14 24.5ZM23.625 21H4.375C4.14298 20.9999 3.9205 20.9076 3.75644 20.7436C3.59237 20.5795 3.50014 20.357 3.5 20.125C3.50076 19.429 3.77757 18.7618 4.26969 18.2697C4.76181 17.7776 5.42904 17.5008 6.125 17.5H21.875C22.571 17.5008 23.2382 17.7776 23.7303 18.2697C24.2224 18.7618 24.4992 19.429 24.5 20.125C24.4999 20.357 24.4076 20.5795 24.2436 20.7436C24.0795 20.9076 23.857 20.9999 23.625 21Z" fill="#0B2A97" />
                                    </svg>
                                    <?php if (empty($cuti)) { ?>
                                        <!-- <div class="pulse-css"></div> -->
                                    <?php } else { ?>
                                        <div class="pulse-css"></div>
                                    <?php } ?>
                                </a>
                                <div class="dropdown-menu rounded dropdown-menu-right">
                                    <div class="widget-media p-3">
                                        <ul class="timeline">
                                            <?php foreach ($cuti as $row) : ?>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2">
                                                            <img alt="image" width="50" src="<?php echo base_url() . 'assets/photo/' . $row->photo ?>">
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1"><?= $row->nama ?></h6>
                                                            <small class="d-block">has submitted approval</small>
                                                        </div>
                                                    </div>
                                                </li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </div>
                                    <?php if (empty($cuti)) { ?>
                                        <a class="all-notification">no notification yet</a>
                                    <?php } else { ?>
                                        <a class="all-notification" href="<?= site_url('admin/cuti') ?>">See all notifications <i class="ti-arrow-right"></i></a>
                                    <?php } ?>
                                </div>
                            </li>
                            <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="javascript:void(0)" role="button" data-toggle="dropdown">
                                    <img src="<?= base_url('assets') ?>/admin.png" width="20" alt="" />
                                    <div class="header-info">
                                        <span class="text-black"><strong><?php echo $this->session->userdata('nama_admin') ?></strong></span>
                                        <p class="fs-12 mb-0">Super Admin</p>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="<?= base_url('admin/reset') ?>" class="dropdown-item ai-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-person-fill-gear" viewBox="0 0 16 16">
                                            <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm9.886-3.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z" />
                                        </svg>
                                        <span class="ml-2">Reset </span>
                                    </a>
                                    <a href="<?= base_url('admin/auth/logout') ?>" class="dropdown-item ai-icon">
                                        <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                            <polyline points="16 17 21 12 16 7"></polyline>
                                            <line x1="21" y1="12" x2="9" y2="12"></line>
                                        </svg>
                                        <span class="ml-2">Logout </span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="deznav">
            <div class="deznav-scroll">
                <ul class="metismenu" id="menu">
                    <li><a href="<?= site_url('admin/home') ?>" class="ai-icon" aria-expanded="false">
                            <i class="flaticon-381-home"></i>
                            <span class="nav-text">Dashboard</span>
                        </a>
                    </li>
                    <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                            <i class="flaticon-381-database-2"></i>
                            <span class="nav-text">Master Data</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="<?= site_url('admin/provinsi') ?>">Provinsi</a></li>
                            <li><a href="<?= site_url('admin/kabupaten') ?>">Kabupaten</a></li>
                            <li><a href="<?= site_url('admin/kecamatan') ?>">Kecamatan</a></li>
                        </ul>
                    </li>
                    <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                            <i class="flaticon-381-internet"></i>
                            <span class="nav-text">Perusahaan</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="<?= site_url('admin/jabatan') ?>">Jabatan</a></li>
                            <li><a href="<?= site_url('admin/bagian') ?>">Bagian</a></li>
                        </ul>
                    </li>
                    <li><a href="<?= site_url('admin/pegawai') ?>" class="ai-icon" aria-expanded="false">
                            <i class="flaticon-381-user-8"></i>
                            <span class="nav-text">Pegawai</span>
                        </a>
                    </li>
                    <li><a href="<?= site_url('admin/absensi') ?>" class="ai-icon" aria-expanded="false">
                            <i class="flaticon-381-stopclock"></i>
                            <span class="nav-text">Absensi</span>
                        </a>
                    </li>
                    <!-- <li><a href="<?= site_url('admin/cuti') ?>" class="ai-icon" aria-expanded="false">
                            <i class="flaticon-381-calendar-5"></i>
                            <span class="nav-text">Cuti Kerja</span>
                        </a>
                    </li> -->
                    <li><a href="<?= site_url('admin/payroll') ?>" class="ai-icon" aria-expanded="false">
                            <i class="flaticon-381-ring"></i>
                            <span class="nav-text">Payroll</span>
                        </a>
                    </li>
                    <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                            <i class="flaticon-381-print"></i>
                            <span class="nav-text">Laporan</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="<?= site_url('admin/laporan_gaji') ?>">Laporan gaji</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
<?php
defined('BASEPATH') or exit('No Direct script access allowed');
class Laporan extends CI_Controller
{
    function __construct()
    {
    parent::__construct();
    
    }
    public function laporan_buku()
    {
        $data['judul'] = 'Laporan Data Buku';
        $data['user'] = $this->ModelUser->cekData(['email' => $this->session->userdata('email')])->row_array();
        $data['buku'] = $this->ModelBuku->getBuku()->result_array();
        $data['kategori'] = $this->ModelBuku->getKategori()->result_array();
        
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('buku/laporan_buku', $data);
        $this->load->view('templates/footer');
        }

<!-- Begin Page Content -->

<div class="container-fluid">

    <?= $this->session->flashdata('pesan'); ?>
    <div class="row">
        <div class="col-lg-12">
            <?php if (validation_errors()) {?>
                <div class="alert alert-danger" role="alert">
                <?= validation_errors();?>
                </div>
        <?php }?>
        <?= $this->session->flashdata('pesan'); ?>
        <a href="<? base_url('laporan/cetak_laporan_buku'); ?>" class="btn btn-primary mb-3"><i class="fas fa-print>"</i> Print</a>
        <a href="<? base_url('laporan/laporan_buku_pdf'); ?>" class="btn btn-warning mb-3"><i class="far fa-file-pdf>"</i> Download Pdf</a>
        <a href="<? base_url('laporan/export_excel'); ?>" class="btn btn-success mb-3"><i class="far fa-file-excel>"</i> Export ke Excel</a>
        <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Pengarang</th>
                        <th scope="col">Penerbit</th>
                        <th scope="col">Tahun</th>
                        <th scope="col">ISBN</th>
                        <th scope="col">Stok</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        $a = 1;
                        foreach ($buku as $b) { ?>
                    <tr>
                        <th scope="row"><?= $a++; ?></th>
                        <td><?= $b['judul_buku']; ?></td>
                        <td><?= $b['pengarang']; ?></td>
                        <td><?= $b['penerbit']; ?></td>
                        <td><?= $b['tahun_terbit']; ?></td>
                        <td><?= $b['isbn']; ?></td>
                        <td><?= $b['stok']; ?></td>
                    </tr>    
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    </div>
<!-- /.container-fluid -->
</div>
        
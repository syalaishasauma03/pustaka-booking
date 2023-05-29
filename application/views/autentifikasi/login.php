<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-7">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Log in</h1>
                                </div>
                                <?= $this->session->flashdata('pesan'); ?>
                                <form action="<?= base_url('autentifikasi'); ?>" class="user" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" value="<?= set_value('email'); ?>" id="email" placeholder="Email" name="email">
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="password">
                                        <?= form_error('password', '<small class="text-danger pl-3>', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">Log in</button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a href="<?= base_url('autentifikasi/lupaPassword'); ?>" class="small">Forgot Password?</a>
                                </div>
                                <div class="text-center">
                                    <a href="<?= base_url('autentifikasi/registrasi'); ?>" class="small">Sign Up</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Tambah Produk Baru
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.produk') }}" class="btn btn-success pull-right">Semua Produk</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    @if(Session::has('message'))
                        <div class="alert alert-success">{{ Session::get('message') }}</div>
                    @endif
                    <form class="form-horizontal" enctype="multipart/form-data" wire:submit.prevents='addProduk'>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Nama Produk</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Nama Produk" class="form-control input-md" wire:model="nama" wire:keyup="generateSlug"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Produk Slug</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Produk Slug" class="form-control input-md" wire:model="slug"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Deskripsi Singkat</label>
                                <div class="col-md-4">
                                    <textarea class="form-control" placeholder="Deskripsi Singkat" wire:model="short_des"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Deskripsi</label>
                                <div class="col-md-4">
                                    <textarea class="form-control" placeholder="Deskripsi " wire:model="deskripsi"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Harga</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Harga" class="form-control input-md" wire:model="harga_normal"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">SKU</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="SKU" class="form-control input-md" wire:model="SKU"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Stok</label>
                                <div class="col-md-4">
                                    <select class="form-control " wire:model="stok_status">
                                        <option value="ada">Barang Tersedia</option>
                                        <option value="habis">Barang Habis</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Featured</label>
                                <div class="col-md-4">
                                    <select class="form-control" wire:model="featured">
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Kuantitas</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Kuantitas" class="form-control input-md" wire:model="kuantitas"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Gambar Produk</label>
                                <div class="col-md-4">
                                    <input type="file"  class="input-file" wire:model="image"/>
                                    @if ($image)
                                        <img src="{{ $image->temporaryUrl() }}" width="120">

                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

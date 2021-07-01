<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Semua Produk
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.addproduk') }}" class="btn btn-success pull-right">Tambah baru</a>
                            </div>
                        </div>

                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Gambar</th>
                                    <th>Nama</th>
                                    <th>Stok</th>
                                    <th>Harga</th>
                                    <th>Tanggal</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($produk as $prod)
                                <tr>
                                    <td>{{ $prod->id }}</td>
                                    <td><img src="{{ asset('assets/images/products')}}/{{ $prod->image }}" width="60"></td>
                                    <td>{{ $prod->nama }}</td>
                                    <td>{{ $prod->jumlah }}</td>
                                    <td>{{ $prod->harga_normal }}</td>
                                    <td>{{ $prod->created_at }}</td>
                                    <td></td>
                                </tr> 
                                @endforeach
                            </tbody>
                        </table>
                        {{ $produk->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

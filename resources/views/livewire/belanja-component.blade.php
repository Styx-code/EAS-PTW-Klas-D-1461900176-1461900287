<main id="main" class="main-site left-sidebar">
    <div class="container">
        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="#" class="link">home</a></li>
                <li class="item-link"><span>Semua Item</span></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">
                <div class="banner-shop">
                    <a href="#" class="banner-link">
                        <figure><img src="{{ asset('assets/images/shop-banner.jpg')}}" alt=""></figure>
                    </a>
                </div>
                <div class="row">
                    <ul class="product-list grid-products equal-container">
                        @foreach ($produks as $produk)
                        <li class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
                            <div class="product product-style-3 equal-elem ">
                                <div class="product-thumnail">
                                    <a href="{{ route('produk.detail',['slug'=>$produk->slug]) }}" title="{{ $produk->nama }}">
                                        <figure><img src="{{ asset('assets/images/products')}}/{{ $produk->image }}" alt="{{ $produk->nama }}"></figure>
                                    </a>
                                </div>
                                <div class="product-info">
                                    <a href="{{ route('produk.detail',['slug'=>$produk->slug]) }}" class="product-name"><span>{{ $produk->nama }}</span></a>
                                    <div class="wrap-price"><span class="product-price">{{ $produk->harga_normal }}</span></div>
                                    <a href="#" class="btn add-to-cart" wire:click.prevents="store({{ $produk->id}},'{{ $produk->nama }}',{{ $produk->harga_normal }})">Tambah ke Keranjang</a>
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="wrap-pagination-info">
                    {{ $produks ->links()}}
                </div>
            </div><!--end main products area-->
        </div><!--end row-->
    </div><!--end container-->
</main>

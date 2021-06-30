
<main id="main" class="main-site">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>detail</span></li>
            </ul>
        </div>
        <div class="row">

            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">
                <div class="wrap-product-detail">
                    <div class="detail-media">
                        <div class="product-gallery">
                          <ul class="slides">

                            <li data-thumb="{{ asset('assets/images/products')}}/{{ $produk->image}}">
                                <img src="{{ asset('assets/images/products')}}/{{ $produk->image}}" alt="{{ $produk->nama }}" />
                            </li>
                          </ul>
                        </div>
                    </div>
                    <div class="detail-info">
                        <div class="product-rating">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <a href="#" class="count-review">(05 review)</a>
                        </div>
                        <h2 class="product-name">{{ $produk->nama }}</h2>
                        <div class="short-desc">
                            {{ $produk->short_des }}
                        </div>
                        <div class="wrap-price"><span class="product-price">Rp{{ $produk->harga_normal }}</span></div>
                        <div class="stock-info in-stock">
                            <p class="availability">Availability: <b>{{ $produk->stok_status }}</b></p>
                        </div>
                        <div class="quantity">
                            <span>Quantity:</span>
                            <div class="quantity-input">
                                <input type="text" name="product-quatity" value="1" data-max="120" pattern="[0-9]*" >
                                
                                <a class="btn btn-reduce" href="#"></a>
                                <a class="btn btn-increase" href="#"></a>
                            </div>
                        </div>
                        <div class="wrap-butons">
                            <a href="#" class="btn add-to-cart">Tambah ke Keranjang</a>
                        </div>
                    </div>
                    <div class="advance-info">
                        <div class="tab-control normal">
                            <a href="#description" class="tab-control-item active">Deskripsi</a>
                            <a href="#add_infomation" class="tab-control-item">Informasi Tambahan</a>
                        </div>
                        <div class="tab-contents">
                            <div class="tab-content-item active" id="description">
                                {{ $produk->deskripsi }}
                            </div>
                            <div class="tab-content-item " id="add_infomation">
                                <table class="shop_attributes">
                                    <tbody>
                                        <tr>
                                            <th>Warna</th><td class="product_weight">---</td>
                                        </tr>
                                        <tr>
                                            <th>Size</th><td class="product_dimensions">M   L   XL</td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-content-item " id="review">
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end main products area-->

            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sitebar">
                <div class="widget widget-our-services ">
                    <div class="widget-content">
                        <ul class="our-services">

                            <li class="service">
                                <a class="link-to-service" href="#">
                                    <i class="fa fa-truck" aria-hidden="true"></i>
                                    <div class="right-content">
                                        <b class="title">Gratis Ongkir</b>
                                        <span class="subtitle">Untuk minimal pembelian Rp 70.000</span>
                                    </div>
                                </a>
                            </li>

                            <li class="service">
                                <a class="link-to-service" href="#">
                                    <i class="fa fa-gift" aria-hidden="true"></i>
                                    <div class="right-content">
                                        <b class="title">Promo Spesial</b>
                                        <span class="subtitle">Dapatkan Bonus</span>
                                    </div>
                                </a>
                            </li>

                            <li class="service">
                                <a class="link-to-service" href="#">
                                    <i class="fa fa-reply" aria-hidden="true"></i>
                                    <div class="right-content">
                                        <b class="title">Pengembalian</b>
                                        <span class="subtitle">Pengembalian hingga 7 hari </span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div><!-- Categories widget-->

                <div class="widget mercado-widget widget-product">
                    <h2 class="widget-title">PRODUK TERPOPULER</h2>
                    <div class="widget-content">
                        <ul class="products">
                            @foreach ($popular_produk as $p_produk)
                            <li class="product-item">
                                <div class="product product-widget-style">
                                    <div class="thumbnnail">
                                        <a href="{{ route('produk.detail',['slug'=>$p_produk->slug]) }}" title="{{ $produk->nama }}">
                                            <figure><img src="{{ asset('assets/images/products')}}/{{ $p_produk->image }}" alt="{{ $p_produk->nama }}"></figure>
                                        </a>
                                    </div>
                                    <div class="product-info">
                                        <a href="{{ route('produk.detail',['slug'=>$p_produk->slug]) }}" title="{{ $produk->nama }}" class="product-name"><span>{{ $produk->nama }}</span></a>
                                        <div class="wrap-price"><span class="product-price">Rp{{ $produk->harga_normal }}</span></div>
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div><!--end sitebar-->

            <div class="single-advance-box col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="wrap-show-advance-info-box style-1 box-in-site">
                    <h3 class="title-box">PRODUK SERUPA</h3>
                    <div class="wrap-products">
                        <div class="products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"3"},"1200":{"items":"5"}}' >
                            @foreach ($related_produk as $r_produk)
                            <div class="product product-style-2 equal-elem ">
                                <div class="product-thumnail">
                                    <a href="{{ route('produk.detail',['slug'=>$r_produk->slug]) }}"title="{{ $r_produk->nama }}">
                                        <figure><img src="{{ asset('assets/images/products')}}/{{ $r_produk->image }}" width="214" height="214" alt="{{ $r_produk->nama}}"></figure>
                                    </a>
                                    <div class="group-flash">
                                        <span class="flash-item new-label">new</span>
                                    </div>
                                    <div class="wrap-btn">
                                        <a href="#" class="function-link">quick view</a>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <a href="#" class="product-name"><span>{{ $produk->nama }}</span></a>
                                    <div class="wrap-price"><span class="product-price">Rp{{ $produk->harga_normal }}</span></div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div><!--End wrap-products-->
                </div>
            </div>

        </div><!--end row-->

    </div><!--end container-->

</main>

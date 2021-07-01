<main id="main" class="main-site">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>Keranjang</span></li>
            </ul>
        </div>
        <div class=" main-content-area">
            
            <div class="wrap-iten-in-cart">
                @if (Session::has('succes_message'))
                    <div class="alert alert-succes">
                        <strong>Sukses</strong>{{ Session::get('success_message') }}
                    </div>
                @endif
                @if(Cart::count() > 0)
                <h3 class="box-title">Keranjang</h3>
                <ul class="products-cart">
                    @foreach (Cart::content() as $item)                    
                    <li class="pr-cart-item">
                        <div class="product-image">
                            <figure><img src="{{ asset('assets/images/products')}}/{{ $item->model->image }}" alt="{{ $item->model->nama }}"></figure>
                        </div>
                        <div class="product-name">
                            <a class="link-to-product" href="{{ route('produk.detail', ['slug'=>$item->model->slug]) }}">{{ $item->model->nama }}</a>
                        </div>
                        <div class="price-field produtc-price"><p class="price">Rp{{ $item->model->harga_normal }}</p></div>
                        <div class="quantity">
                            <div class="quantity-input">
                                <input type="text" name="product-quatity" value="{{ $item->jml }}" data-max="120" pattern="[0-9]*" >		
                                <a class="btn btn-increase" href="#" wire:click.prevents="tambah('{{ $item->rowId }}')"></a>
                                <a class="btn btn-reduce" href="#" wire:click.prevents="kurang('{{ $item->rowId }}')"></a>
                            </div>
                        </div>
                        <div class="price-field sub-total"><p class="price">Rp{{ $item->subtotal }}</p></div>
                        <div class="delete">
                            <a href="#" wire:click.prevents="destroy('{{ $item->rowId }}')" class="btn btn-delete" title="">
                                <span>Hapus Dari Keranjang</span>
                                <i class="fa fa-times-circle" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>	
                    @endforeach	
                </ul>
                @else
                    <p>Keranjang Kosong</p>
                @endif
            </div>

            <div class="summary">
                <div class="order-summary">
                    <h4 class="title-box">Order Summary</h4>
                    <p class="summary-info"><span class="title">Subtotal</span><b class="index">Rp{{ Cart::subtotal() }}</b></p>
                    {{-- <p class="summary-info"><span class="title">Pajak</span><b class="index">Rp{{ Cart::tax() }}</b></p> --}}
                    <p class="summary-info"><span class="title">Ongkir</span><b class="index">Free Shipping</b></p>
                    <p class="summary-info total-info "><span class="title">Total</span><b class="index">Rp{{ Cart::total() }}</b></p>
                </div>
                <div class="checkout-info">
                    <label class="checkbox-field">
                        <input class="frm-input " name="have-code" id="have-code" value="" type="checkbox"><span>Gunakan Voucher</span>
                    </label>
                    <a class="btn btn-checkout" href="#" >Check out</a>
                    <a class="link-to-shop" href="{{ route('belanja') }}">Lanjutkan Berbelanja<i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
                </div>
                <div class="update-clear">
                    <a class="btn btn-clear" href="#" wire:click.prevents="destroyAll()">Bersihkan Keranjang</a>
                    <a class="btn btn-update" href="#">Update Keranjang</a>
                </div>
            </div>
        </div><!--end main content area-->
    </div><!--end container-->

</main>
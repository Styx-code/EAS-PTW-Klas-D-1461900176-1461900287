<?php

namespace App\Http\Livewire;

use App\Models\Produk;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;

class BelanjaComponent extends Component
{
    public function store($produk_id, $produk_nama,$produk_harga)
    {
        Cart::add($produk_id,$produk_nama,1,$produk_harga)->associate('App\Models\Produk');
        Session()->flash('success_message','Item ditambahkan ke Keranjang');
        return redirect()->route('produk.keranjang');

    }
    use WithPagination;
    public function render()
    {
        
        $produks = Produk::paginate(12);
        return view('livewire.belanja-component', ['produks'=>$produks])->layout("layouts.base");
    }
}

<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Cart;

class KeranjangComponent extends Component
{
    public function tambah($rowId)
    {
        $produk = Cart::get($rowId);
        $jml = $produk->jumlah + 1;
        Cart::update($rowId,$jml);
    }
    public function kurang($rowId)
    {
        $produk = Cart::get($rowId);
        $jml = $produk->jumlah - 1;
        Cart::update($rowId,$jml); 
    }
    public function destroy($rowId)
    {
        Cart::remove($rowId);
        session()->flash('success_message', 'Item has been removed');
    }
    public function destroyAll()
    {
        Cart::destroy();
    }
    public function checkout()
    {
        if(Auth::check())
        {
            return redirect()->route('checkout');
        }
        else 
        {
            return redirect()->route('login');
        }
    }
    public function totalbayar()
    {
        session()->put('checkout',[
            'subtotal' => Cart::instance('keranjang')->subtotal(),
            'total' => Cart::instance('keranjang')->total()
        ]);
    }
    public function render()
    {
        $this->totalbayar();
        return view('livewire.keranjang-component')->layout("layouts.base");
    }
}

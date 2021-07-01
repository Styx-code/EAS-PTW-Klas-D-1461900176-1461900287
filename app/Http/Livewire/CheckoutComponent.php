<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CheckoutComponent extends Component
{
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
        return view('livewire.checkout-component')->layout("layouts.base");
    }
}

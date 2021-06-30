<?php

namespace App\Http\Livewire;

use App\Models\Produk;
use Livewire\Component;

class DetailComponent extends Component
{
    public $slug;

    public function mount($slug)
    {
        $this->$slug = $slug;
    }
    public function render()
    {
        $produk = Produk::where('slug',$this->slug)->first();
        $popular_produk = Produk::inRandomOrder()->limit(4)->get();
        $related_produk = Produk::where('kategori_id', $produk->kategori_id)->inRandomOrder()->limit(5)->get();
        return view('livewire.detail-component', ['produk'=>$produk, 'popular_produk'=>$popular_produk, 'related_produk'=>$related_produk])->layout('layouts.base');
    }
}

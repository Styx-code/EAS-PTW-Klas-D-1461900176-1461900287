<?php

namespace App\Http\Livewire;

use App\Models\Produk;
use Livewire\Component;
use Livewire\WithPagination;

class BelanjaComponent extends Component
{
    use WithPagination;
    public function render()
    {
        
        $produks = Produk::paginate(12);
        return view('livewire.belanja-component', ['produks'=>$produks])->layout("layouts.base");
    }
}

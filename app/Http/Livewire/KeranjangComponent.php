<?php

namespace App\Http\Livewire;

use Livewire\Component;

class KeranjangComponent extends Component
{
    public function render()
    {
        return view('livewire.keranjang-component')->layout("layouts.base");
    }
}

<?php

namespace App\Http\Livewire\Admin;

use App\Models\Produk;
use Livewire\Component;
use Livewire\WithPagination;

class AdminProdukComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $produk = Produk::paginate(10);
        return view('livewire.admin.admin-produk-component',['produk'=>$produk])->layout('layouts.base');
    }
}

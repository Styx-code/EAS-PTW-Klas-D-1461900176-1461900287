<?php

namespace App\Http\Livewire\Admin;

use App\Models\Produk;
use Carbon\Carbon;
use Livewire\Component;
use illuminate\Support\Str;
use Livewire\WithFileUploads;

class AdminAddProdukComponent extends Component
{
    use WithFileUploads;
    public $nama;
    public $slug;
    public $short_des;
    public $deskripsi;
    public $harga_normal;
    public $SKU;
    public $stok_status;
    public $featured;
    public $kuantitas;
    public $image;
    public function mount()
    {
        $this->stok_status = 'ada';
        $this->featured = 0;
    }
    public function generateSlug()
    {
        $this->slug = Str::slug($this->nama, '-');
    }
    public function addProduk()
    {
        $produk = new Produk();
        $produk->nama = $this->nama;
        $produk->slug = $this->slug;
        $produk->short_des = $this->short_des;
        $produk->deskripsi = $this->deskripsi;
        $produk->harga_normal = $this->harga_normal;
        $produk->SKU = $this->SKU;
        $produk->stok_status = $this->stok_status;
        $produk->featured = $this->featured;
        $produk->jumlah = $this->kuantitas;
        $imageName = Carbon::now()->timestamp. '_' .$this->image->extension();
        $this->image->storeAs('produk', $imageName);
        $produk->image = $imageName;
        $produk->save();
        session()->flash('message', 'Produk has been created successfully');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-produk-component')->layout('layouts.base');
    }
}

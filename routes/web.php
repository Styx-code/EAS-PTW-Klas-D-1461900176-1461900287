<?php

use App\Http\Livewire\Admin\AdminAddProdukComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\Admin\AdminProdukComponent;
use App\Http\Livewire\BelanjaComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\DetailComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\KeranjangComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomeComponent::class);

Route::get('/belanja', BelanjaComponent::class)->name('belanja');
Route::get('/keranjang', KeranjangComponent::class)->name('produk.keranjang');
Route::get('/checkout', CheckoutComponent::class);
Route::get('/produk/{slug}', DetailComponent::class)->name('produk.detail');

// customer
Route::middleware(['auth:sanctum', 'verified'])->group(function(){
    Route::get('user/dashboard', UserDashboardComponent::class)->name('user.dashboard');
});
//admin
Route::middleware(['auth:sanctum', 'verified', 'authadmin'])->group(function(){
    Route::get('admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');
    Route::get('/admin/produk', AdminProdukComponent::class)->name('admin.produk');
    Route::get('/admin/produk/add', AdminAddProdukComponent::class)->name('admin.addproduk');
});
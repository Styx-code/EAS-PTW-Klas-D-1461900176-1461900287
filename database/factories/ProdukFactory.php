<?php

namespace Database\Factories;

use App\Models\Produk;
use Illuminate\Database\Eloquent\Factories\Factory;
use illuminate\support\Str;

class ProdukFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Produk::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $produk_nama = $this->faker->unique()->words($nb=2, $asText=true);
        $slug = Str::slug($produk_nama);
        return [
            'nama' => $produk_nama,
            'slug' => $slug,
            'short_des' => $this->faker->text(200),
            'deskripsi' => $this->faker->text(500),
            'harga_normal' => $this->faker->numberBetween(10,500),
            'SKU' => 'DIGI'.$this->faker->unique()->numberBetween(100,500),
            'stok_status' => 'stok_ada',
            'jumlah' => $this->faker->numberBetween(100,200),
            'image' => 'prod_' . $this->faker->unique()->numberBetween(1,22).'.jpg',
            'kategori_id' => $this->faker->numberBetween(1,5)

        ];
    }
}

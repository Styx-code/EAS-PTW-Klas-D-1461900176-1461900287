<?php

namespace Database\Factories;

use App\Models\Kategori;
use Illuminate\Database\Eloquent\Factories\Factory;
use illuminate\Support\Str;

class KategoriFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Kategori::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $kategori_nama = $this->faker->unique()->words($nb=2, $asText=true);
        $slug = Str::slug($kategori_nama);
        return [
            'nama' => $kategori_nama,
            'slug' => $slug
        ];
    }
}

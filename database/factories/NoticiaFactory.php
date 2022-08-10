<?php

namespace Database\Factories;

use App\Models\noticia;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\noticia>
 */
class NoticiaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @var string
     */
    protected $model = noticia::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    
    public function definition()
    {
        return [
            'titulo'=>$this->faker->name(), 
            'descripcion'=>$this->faker->paragraph()
        ];
    }
}

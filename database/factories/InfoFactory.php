<?php

namespace Database\Factories;

use App\Models\info;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\info>
 */
class InfoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @var string
     */
    protected $model = info::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'virus'=>$this->faker->randomElement(["variante","covid","viruela","nodiagnosticado"]),
            'centro'=>$this->faker->sentence(),
            'sintomas'=>$this->faker->randomElement(["tos","fiebre","erupciones en la piel","dolor de cabeza","dolores musculares","vomito","otroSintoma"])
        ];
    }
}

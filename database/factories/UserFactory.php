<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @var string
     */
    protected $model = User::class;
    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'email' =>$this->faker->safeEmail(),//genera correos
            'password' =>$this->faker->password(), // password
            'cedula' =>$this->faker->unique()->numberBetween(1000000,99999999),//digitos aleatorios
            'apellido' =>$this->faker->name(),//dos nombres
            'name' =>$this->faker->name(),
            'municipio' =>$this->faker->word(),//palabras
            'localidad' =>$this->faker->word(),
            'direccion' =>$this->faker->text($maxNBChars = 100),//texto de maximo 100
            'tlf' =>$this->faker->numberBetween(11111111,99999999),
            'tlm' =>$this->faker->numberBetween(11111111,99999999),
            'credencial' =>$this->faker->randomElement(["7777",null])
        ];
    }

    
    // public function unverified()
    // {
    //     return $this->state(function (array $attributes) {
    //         return [
    //             'email_verified_at' => null,
    //         ];
    //     });
    // }
}

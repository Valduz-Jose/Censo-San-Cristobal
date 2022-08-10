<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use App\Models\Info;
use App\Models\Noticia;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        /*aqui irian los valores por defecto de cada variable*/
        $this->call(UserSeeder::class);//llama los demas seeders para ejecutarlos
        $this->call(InfoSeeder::class);//llama los demas seeders para ejecutarlos
        $this->call(NoticiaSeeder::class);//llama los demas seeders para ejecutarlos
    }
}

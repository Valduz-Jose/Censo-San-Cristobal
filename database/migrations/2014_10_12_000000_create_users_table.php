<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()//crea la tabla
    {
        Schema::create('users', function (Blueprint $table) {//blueprint para crear columnas
            $table->id();//columna Integer Unsigned Increment
            $table->string('email')->unique();//para proteger  a nivel de base de datos, debe ser unico
            $table->string('password')->unique();//contraseñas
            $table->string('name',30);//varchar 30 caracteres
            $table->string('cedula')->nullable();//
            $table->string('apellido',30)->nullable();//
            $table->string('municipio',100)->nullable();//
            $table->string('localidad',20)->nullable();//
            $table->string('direccion')->nullable();//
            $table->string('tlf',30)->nullable();//
            $table->string('tlm',30)->nullable();//
            $table->string('credencial',10)->nullable();
            $table->timestamp('email_verified_at')->nullable();//Guarda fechas ->Activar verificacion de correos electronicos
            $table->rememberToken();//columnaVarchar guarda un token cada que le da mantener sesion iniciada
            $table->timestamps();//crea dos columnas crate at y update at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()//vacia la tabla
    {
        Schema::dropIfExists('users');
    }
};

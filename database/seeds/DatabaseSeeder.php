<?php

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
        $this->call(UsersTableSeeder::class);

        $this->call(DatosTableSeeder::class);
        $this->call(LogosTableSeeder::class);
        $this->call(RedesTableSeeder::class);
        $this->call(EnlacesTableSeeder::class);
        $this->call(IconosTableSeeder::class);
        $this->call(SlidersTableSeeder::class);
        $this->call(EmpresaTableSeeder::class);
        $this->call(LineaItemsTableSeeder::class);
        $this->call(FamiliasTableSeeder::class);
        $this->call(ProductosTableSeeder::class);
        $this->call(ProductoRelacionadosTableSeeder::class);
        $this->call(ProductoImagenesTableSeeder::class);
        $this->call(CategoriasTableSeeder::class);
        $this->call(BlogsTableSeeder::class);
    }
}

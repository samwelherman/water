<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Supplier;

class SuppliersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Supplier::truncate();
  
        $csvFile = fopen(base_path("database/data/suppliers.csv"), "r");
  
        $firstline = true;
        while (($data = fgetcsv($csvFile, 2000, ",")) !== FALSE) {
            if (!$firstline) {
                Supplier::create([
                    "id"        => $data['0'],
                    "user_id"   => $data['1'],
                    "name"      => $data['2'],
                    "address"   => $data['3'],
                    "phone"     => $data['4'],
                    "TIN"       => $data['5'],
                    "email"     => $data['6']
                ]);    
            }
            $firstline = false;
        }
   
        fclose($csvFile);
    }
}

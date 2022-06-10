<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Cotton\Operator;

class OperatorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Operator::truncate();
  
        $csvFile = fopen(base_path("database/data/operaters.csv"), "r");
  
        $firstline = true;
        while (($data = fgetcsv($csvFile, 2000, ",")) !== FALSE) {
            if (!$firstline) {
                Operator::create([
                    "id"        => $data['0'],
                    "user_id"   => $data['1'],
                    "name"      => $data['2'],
                    "address"   => $data['3'],
                    "phone"     => $data['4'],
                    "email"     => $data['5'],
                    "TIN"       => $data['6']
                ]);    
            }
            $firstline = false;
        }
   
        fclose($csvFile);
    }
}

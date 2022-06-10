<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Truck;

class TrucksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Truck::truncate();
  
        $csvFile = fopen(base_path("database/data/trucks.csv"), "r");
  
        $firstline = true;
        while (($data = fgetcsv($csvFile, 2000, ",")) !== FALSE) {
            if (!$firstline) {
                Truck::create([
                    "id"          => $data['0'],
                    "reg_no"      => $data['1'],
                    "truck_name"  => $data['2'],
                    "owner"       => $data['3'],
                    "location"    => $data['4'],
                    "fuel"        => $data['5'],
                    "truck_status"=> $data['6'],
                    "type"        => $data['7']
                ]);    
            }
            $firstline = false;
        }
   
        fclose($csvFile);
    }
}

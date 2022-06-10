<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Cotton\CollectionCenter;

class CollectionCenterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CollectionCenter::truncate();
  
        $csvFile = fopen(base_path("database/data/collectioncenters.csv"), "r");
  
        $firstline = true;
        while (($data = fgetcsv($csvFile, 2000, ",")) !== FALSE) {
            if (!$firstline) {
                CollectionCenter::create([
                    "name"          => $data['0'],
                    "amcos"         => $data['1'],
                    "added_by"      => $data['2'],
                    "district_id"   => $data['3'],
                    "operator_id"   => $data['4'],
                    "head"          => $data['5']
                ]);    
            }
            $firstline = false;
        }
   
        fclose($csvFile);
    }
}

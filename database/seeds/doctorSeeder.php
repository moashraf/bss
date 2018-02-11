<?php

use Illuminate\Database\Seeder;
use App\doctor;
class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
for ($i=0; $i <10 ; $i++) { 
$add=new doctor;
 
$add->doctor_name="dfddfd";
$add->doctor_description="dfddfd";
$add->doctor_img="dfddfd";
$add->doctor_facebook="dfddfd";
$add->doctor_twitter="dfddfd";
$add->doctor_seo="dfddfd";
$add->doctor_instagram="dfddfd";
 
$add->save();
}
    }
}

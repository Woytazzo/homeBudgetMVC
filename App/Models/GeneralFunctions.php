<?php
namespace App\Models;

use PDO;
use \App\Token;

/**
 * Remembered login model
 *
 * PHP version 7.0
 */
class GeneralFunctions extends \Core\Model
{
	public function __construct($data = [])
    {
        foreach ($data as $key => $value) {
            $this->$key = $value;
        };
    }
	
	
	public function getToday()
	{
		$month = date('m');
		$day = date('d');
		$year = date('Y');
		
		$today = $year . '-' . $month . '-' . $day;
		return $today;
	}
	
}
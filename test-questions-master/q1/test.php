<?php
	include "solution.php";
	$countryArray = include "input.php";
	
	function check($arr, $field) {
	
		$resorted = depthSort($arr, $field);
		
		$string = "";
		array_map(function ($item) use (&$string, $field) {
			$string .= $item[$field];
		}, $resorted);

		return $string;
	}
	
	if ( check($countryArray, "capital") == "BerlinLondonParisWashington DC" && check($countryArray, "country_code") == "+1+33+44+49" ) {
		echo "Pass";
	}
	else {
		echo "Fail";
	}
?>

<?php 
	function depthsort(&$array, $key)
	{
		usort($array, (string)$key);
		return $array;
	}

	function full_name($a, $b)
	{
		return strcmp($a["full_name"], $b["full_name"]); 
	}

	function country_code($a, $b)
	{
		return strcmp($a["country_code"], $b["country_code"]); 
	}
	function capital($a, $b)
	{
		return strcmp($a["capital"], $b["capital"]);
	}
?>

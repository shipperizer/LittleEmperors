<?php

trait FileHandler {
    function hasConnection() {
        return $self::$file;
    }
}

class Logger implements FileHandler {
        
    $log;
    private $file;
    
    public function Logger($file) {
        
        // Constructs the Logger
        self::$file = fopen($file, "write+");
    }
    
    final private function write-To-Log($string) {
        
        // Writes the new line to log and then makes sure that the connection is still open.
        fwrite($self::$file, $string."<br />");
        self::$file = fopen(self::$file, "write+");
    }
    
    function printLog() {
        while ($line = fread($self::$file)) {
            echo $line."\n";
        }
    }
}


$Logger = new Logger("/etc/log/myfile.log");

$x = 1;
for ( $x; $x<1000; $x++ ) {
    $Logger->{"write-To-Log"}( "x is ",$x );
}

echo printLog();


?>

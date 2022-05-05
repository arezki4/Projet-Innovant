<?php
ini_set("display_errors", 1);
echo exec('mode COM3: baud=9600 data=8 stop=1 parity=n xon=on');
while(1){
 $fd = dio_open('com3:', O_RDWR);
        $data = dio_read($fd, 6);
        dio_close($fd);
        echo "data = $data";
    }

 ?>


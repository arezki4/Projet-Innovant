<?php 


ini_set("display_errors", 1);

include_once("connection.php");

//session_start();
//$bdd = unserialize($_SESSION['bdd']);

	exec('mode COM3: baud=9600 data=8 stop=1 parity=n xon=on');

        $fd = dio_open('com3:', O_RDWR);
        $data = dio_read($fd, 6);
        dio_close($fd);

        //echo "<script>console.log('data = $data')</script>";

	$req_insert = $bd->prepare("CALL add_ins(?)");
	$req_insert->execute([$data]);
	
	
	$req = $bd->prepare('(SELECT username, c_timestamp FROM temperature ORDER BY c_date ASC, c_timestamp DESC LIMIT 10) ORDER BY c_timestamp ASC'); 
        $req->execute(); 
        
        $temp = [];
        $time = [];
        
        while($row = $req->fetch(PDO::FETCH_ASSOC)){
        	$temp[] = (int)$row['username'];
        	$time[] = (int)$row['c_timestamp'];	
        }
        
  	$arr['temp'] = $temp;
	$arr['time'] = $time;
	print_r(json_encode($arr));
	
	//echo $data;

?>

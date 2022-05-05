
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio - Test</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
</head>
<body>

<?php  


ini_set("display_errors", 1);

include_once("connection.php");

//session_start();
//$_SESSION["bdd"] = serialize($bd);

//recuperation des premieres données
        $req = $bd->prepare('SELECT * FROM temperature'); 
        $req->execute(); 
        
        $temp = "[";
        $time = "[";
        
        $count = 0;
        while($row = $req->fetch(PDO::FETCH_ASSOC)){
        	$count++;
        	if ($count < $req->rowCount()){
        		$temp = $temp.$row['username'].",";
        		$time = $time.$row['c_timestamp'].",";
        	}
        	else{
 	       	$temp = $temp.$row['username'];
        		$time = $time.$row['c_timestamp'];
        	}

        	echo $row['username'] . " - " . $row['c_timestamp'] ."<br>";
        }
        
        $temp = $temp. "]";
        $time = $time. "]";
        
        echo "<br><br><br>";
       


?>

<canvas id="myChart" width="20%" height="20%"></canvas>
<script>

                     	const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
		    	type: 'line',
		    	options: {
           animation: false,
         },
		    	data: {
				labels: <?php echo $time; ?>,
				datasets: [{
			    	label: 'Temperature',
			    	data: <?php echo $temp?>,
			    	fill: false,
			    	borderColor: 'rgb(75, 192, 192)',
			    	tension: 0.1
				}]
		    	}
		});
		

</script>

<style>
	
canvas{

  width:1500px !important;
  height:700px !important;

}

</style>

<script>

$(document).ready(function($) {

		setInterval(function () {
	
		$.ajax({ 
		type: 'GET',
		url: 'add_temp.php',
		async : false,
		//data : {bdd : }
         	//dataType: "json",
         	error: function (request, error) {
        //console.log(arguments);
        alert(" Can't do because: " + error);
    },
         	success: function(output) {
         		console.log("Test : "+output);
                     	//alert(JSON.parse(output).time);
                     
                  
	    		myChart.data.labels = JSON.parse(output).time;
	    		myChart.data.datasets.forEach((dataset) => {
				dataset.data = JSON.parse(output).temp;
	    		});
	    		myChart.update();
               }
		});
		
		}, 1000);
});




</script>

</body>





















</html>

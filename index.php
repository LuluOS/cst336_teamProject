<?php 
session_start(); //start or resume an existing session 

include 'dbConn.php'; 

$connection = dbConnect(); 
             
    
?>


<!DOCTYPE html>
<html>
    <head>
        <title>Music Store</title>
        <link rel="shortcut icon" href="https://csumb.edu/sites/default/files/pixelotter.png" type="image/png">
        <link rel="stylesheet" type="css" href="css/main.css">
    </head>
    <body>
        <div>
            <h1> Music Store</h1>
            <form method = "get">
                
                Sort By: 
                <select name = "table">
                    <option selected disabled hidden value = "" ></option>
                    <option value = "1">Album</option>
                    <option value = "2">Artist</option>
                    <option value = "3">Songs</option>
                </select>
                
            <input type="submit" value="Submit">    
            </form>
            
            
        </div>
        
        

    </body>
</html>
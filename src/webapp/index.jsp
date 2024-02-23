
<?php
// error_reporting(E_ALL);
// ini_set("display_errors", "ON");

if(isset($_POST['submit'])){
    $tamt = $_POST['tamt'];
    $gstp = $_POST['gstp'];

    $gstAmount = $tamt -($tamt*(100/(100+$gstp.'%')));
    $netAmount = $tamt-$gstAmount;
    echo "<br>/********** *************/";
    echo "<br>GST Amount: ".round($gstAmount, 2);
    echo "<br>Net Amount: ".round($netAmount, 2);

}

?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h3>GST Calculation</h3>

<div class="container">
  <form action="" method="post">
    <label for="tamt">Total Amount</label>
    <input type="text" id="tamt" name="tamt" placeholder="Your amount..">

    <label for="gstp">GST %</label>
    <input type="text" id="gstp" name="gstp" value="18" placeholder="Your gst %..">

    <input type="submit" value="Submit" name="submit">
  </form>
</div>

</body>
</html>
apps-fileview.texmex_20240215.01_p1
cal_gst.php
Displaying cal_gst.php.
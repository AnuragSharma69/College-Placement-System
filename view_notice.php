<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <br>
    <centre><h3>All Notices Related to Placements</h3></centre><br>
    <?php
    $connection = mysqli_connect("localhost","root","");
    $db = mysqli_select_db($connection,"online_notice_board");
    $query = 'select * from notice';
    $query_run = mysqli_query($connection,$query);
    while($row = mysqli_fetch_assoc($query_run)){
      ?>
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">
          
          <br>Date - <?php echo $row['post_date'];?><br>
          <br>
           Title -  <?php echo $row['title'];?></h5>
           <h5>Message -</h5> 
          <p class="card-text"><?php echo $row['message'];?></p>
        </div>
      </div>
      <?php
    }
    ?>
  </body>
</html>
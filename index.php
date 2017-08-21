<?php include 'database.php' ?>
<?php
  //Create Select Query
  $query = "SELECT * FROM shouts ORDER BY sh_id DESC";
  //Hold Results of Query, Be sure to include query
  $shouts = mysqli_query($con,$query);
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Public Talk!</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
<div id="container">
  <header>
    <h1>Public Talk! Shoutbox</h1>
  </header>
  <div id="shouts">
    <ul>
      <!--
      Shorthand to place HTML inside directly
      While there are still rows matching our query in Database, DO this.-->
      <?php while($row = mysqli_fetch_assoc($shouts)) : ?>
        <li class="shout"><span><?php echo $row['sh_time'] ?> - </span><strong><?php echo $row['sh_user'] ?></strong>: <?php echo $row['sh_message'] ?></li>
      <?php endwhile; ?>
      <!--Static Example
      <li class="shout"><span>10:15PM - </span>Bun: Hey what are you guys up to?</li>-->
    </ul>
  </div>
  <div id="input">
    <?php if(isset($_GET['error'])) : ?>
        <div class="error">
          <?php echo $_GET['error']; ?>
        </div>
  <?php endif; ?>
    <form action="process.php" method="post">
      <input type="text" name="user" placeholder="Enter Name">
      <input type="text" name="message" placeholder="Enter a message">
      <br />
      <input class="shout-btn" type="submit" name="submit" value="Send Message">
    </form>
  </div>
</div>
  </body>
</html>

<html>

<head>
  <title>CRNShare</title>
  <link href="<?= BASE_URL ?>/public/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= BASE_URL ?>/public/css/style.css" type="text/css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
</head>

<body>

  <div id="med_rectangle">
    <div id="signout">Sign Out</div>
    <div id="signedin">Signed in as <em><?php echo $_SESSION['username']?></em></div>
  </div>

  <div id="main">

    <h1 class='elegantshadow'>Edit Post</h1>

    <div id="flat_rectangle">
      <ul class="tabrow">
        <li><a href="<?= BASE_URL ?>/">Home</li>
        <li><a href="<?= BASE_URL ?>/calendar/">Calendar</a></li>
        <li><a href="<?= BASE_URL ?>/chat/">Chat</a></li>
      </ul>
    </div>

    <div id="flat_rectangle">
      <div class="dropdown">
        <button onclick="myFunction()" class="dropbtn">Change Current CRN</button>
        <div id="myDropdown" class="dropdown-content">
          <a href="#">CRN 00000</a>
          <a href="#">CRN 11111</a>
          <a href="#">CRN 22222</a>
        </div>
      </div>
    </div>

    <div id="tall_rectangle"></div>


    <!-- Form -->
    <!-- <span><h1>Edit Post</h1></span> -->
    <div id="newpost">
    <form method="POST" action="<?= BASE_URL ?>/editpost_submit" class="form-horizontal" role="form">
        <div class="form-group">
            <input type="hidden" class="form-control" name="postid" value=<?php echo $postid ?>>
        </div>

        <div class="form-group">
            <label for="title">Title:</label>
            <textarea class="form-control" rows="1" name="title"><?php echo $title ?></textarea>
          </div>

          <div class="form-group form-group-lg">
            <label for="description">Body:</label>
            <textarea class="form-control" rows="5" name="description"><?php echo $body ?></textarea>
          </div>

          <div class="form-group">
            <label for="tag">Tag:</label>
            <textarea class="form-control" rows="1" name="tag"><?php echo $tag ?></textarea>
          </div>

          <input type="submit" name="Cancel" alt="Cancel" class="btn-danger" value="Cancel"/>
          <input type="submit" name="submit" alt="submit" class="btn-success" value="Submit"/>
      </form>
  </div>

  </div>
  <script type="text/javascript" src="<?= BASE_URL ?>/public/js/main.js"></script>
  <script src="<?= BASE_URL ?>/public/js/bootstrap.min.js"></script>
</body>

</html>

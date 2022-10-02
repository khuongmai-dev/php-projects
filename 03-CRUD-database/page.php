<?php require('connect.php'); ?>
<?php 
    include("header.php")?>
    <?php if(isset($_GET['id']) && filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT)
            && $_GET['id'] >= 0) {?>
    
    <?php
        $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
        $query = "SELECT * FROM posts WHERE id = $id";
        $statement = $db->prepare($query);
        $statement->execute();               
    ?>

    <section id="content">
        <?php while($row = $statement->fetch()):?> 
                <div class="blog-post">
                    <div class="title-group">
                    <h2 class= "title-name"><?= $row['title']?></h2>
                    <a class="edit" href="./edit-page.php?id=<?=$row['id']?>">edit</a>
                    </div>
                    <p><small><?= date("M d, Y", strtotime( $row['updatedAt'])) ?></small></p>
                                
                    <div class="blog-content">
                        <article><?= $row['content'] ?></article>
                    </div>
                </div>
        <?php endwhile ?>
    </section>
    <?php }
    else{
        echo "<script type='text/javascript'>alert('There is an error with id, please try again!');</script>";
    }
    ?>  
<?php include("sidebar.php"); ?>
<div class="clear"></div>
<?php include("footer.php")?>
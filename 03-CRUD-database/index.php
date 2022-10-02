
<?php 
    // link to connect.php to connect to database
    require("connect.php");

    //import functions.php
    include("functions.php");

    // build the SQL query 
    $query = "SELECT * FROM posts ORDER BY updatedAt DESC LIMIT 5";

    //PDO::Statement is prepared from the query
    $statement = $db->prepare($query);

    //Execution on the DB server
    $statement->execute();
    

?>
<?php include("header.php") ?>
        <section id="content">
            <h1>Recently Posted Blog Entries</h1>
            <div class="blog-post">
                <?php 
                //using while loop to loop all rows from $statement array
                //then pass each column to corresponding position
                while($row = $statement->fetch()): ?>
                <div class="title-group">
                <h2 class= "title-name"><a href="./page.php?id=<?=$row['id']?>"><?= $row['title'] ?></a></h2>
                <a href="./edit-page.php?id=<?=$row['id']?>" class="edit">edit</a>
                </div>
                <p class="time"><small><?= date("M d, Y", strtotime( $row['updatedAt'])) ?></small></p>             
                
                <div class="blog-content">
                    <?php // using function truncate decleared from functions.php 
                        // if length of content >= 200, show Read full post.
                    ?>
                    <p><a href="./page.php?id=<?=$row['id']?>"><?= truncate($row['content'], 200) ?></a> 
                    <?php if(strlen($row['content']) >= 200){ ?>
                        <a class="read_full_post" href="./page.php?id=<?=$row['id']?>">Read Full Post...</a>
                    <?php } ?>
                    </p>
                </div>
                <?php endwhile?>
            </div>
        </section>      
        <?php include("sidebar.php"); ?>
        <div class="clear">
			</div>

<?php include("footer.php") ?>

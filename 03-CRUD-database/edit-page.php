<?php
    require 'authenticate.php';
        if(isset($_POST['title'], $_POST['content'], $_POST['update'])){
            $err_messages = [];
             $is_valid = true;
             if(strlen($_POST['title']) >= 1 && strlen($_POST['title']) <= 80 
             && strlen($_POST['content']) >= 1){
                require ("connect.php");
                $title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                $content = filter_input(INPUT_POST, 'content', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                echo $id;
                //  Build the parameterized SQL query and bind to the above sanitized values.
                $query = "UPDATE posts SET title = ?, content = ? WHERE id = ?";
                // "INSERT INTO posts (title, content) VALUES (:title, :content)"; 
                $statement = $db->prepare($query);
    
                //  Bind values to the parameters
                $statement->execute([$title, $content, $id]);
                
                //  Execute the INSERT.
                //  execute() will check for possible SQL injection and remove if necessary
                if($statement->execute([$title, $content, $id])){
                    echo "Success!";
                    header("Location: page.php?id={$id}");
                    exit;
                }
            }
            if(empty($_POST['title'])){
                array_push($err_messages, "Title is empty! Please check again");   
                $is_valid = false;
            }
            else if(strlen($_POST['title']) > 80){
                array_push($err_messages, "Title is longer than 80 characters, please check it again!");
                $is_valid = false;
            }
            if(empty($_POST['content'])){
                array_push($err_messages, "Content is empty! Please check again"); 
                $is_valid = false;
            }
            if(!$is_valid){
                foreach($err_messages as $err){
                    echo $err,"<br/>";
                }
            }  
        }
        if(isset($_POST['delete'])){
            require ("connect.php");
            $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

            $query = "DELETE FROM posts WHERE id = ?";
            $statement = $db->prepare($query);
    
                //  Bind values to the parameters
                $statement->execute([$id]);
                
                //  Execute the INSERT.
                //  execute() will check for possible SQL injection and remove if necessary
                if($statement->execute([$id])){
                    echo "Success! <br/> Click here to comeback to the <a href='./index.php' >Homepage</a>";            
                    exit;
                }
        }
?>

<?php include("header.php")?>
    <?php if(isset($_GET['id']) && filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT)
            && $_GET['id'] >= 0) {?>
    <?php require('connect.php'); ?>
    <?php
        $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
        $query = "SELECT * FROM posts WHERE id = $id";
        $statement = $db->prepare($query);
        $statement->execute();               
    ?>
        <section id="content">
        <?php while($row = $statement->fetch()):?>      
             <div class="blog-post">
                <form action="./edit-page.php?id=<?= $id ?>" method="POST">
                    <label for="title">Title</label><br/>
                     <input type="text" id="title" name="title" size="50" value="<?= $row['title']?>"><br/>
                     <label for="content">Content</label><br/>
                     <textarea name="content" rows="20" cols="60"><?= $row['content'] ?></textarea><br/>
                     <input type="submit" name = "update" value="Update Blog">
                    <input class="delete-button" type="submit" name ="delete" value="delete" 
                    onclick="return confirm('Are you sure you wish to delete this post?')">
                </form>
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
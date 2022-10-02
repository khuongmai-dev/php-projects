<?php
    require 'authenticate.php';
    $err_messages = [];
    $is_valid = true;
        if(isset($_POST['title'], $_POST['content'], $_POST['submit'])){         
             if(strlen($_POST['title']) >= 1 && strlen($_POST['title']) <= 80 
             && strlen($_POST['content']) >= 1){
                require ("connect.php");
                $title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                $content = filter_input(INPUT_POST, 'content', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                //  Build the parameterized SQL query and bind to the above sanitized values.
                $query = "INSERT INTO posts (title, content) VALUES (:title, :content)";
                $statement = $db->prepare($query);
    
                //  Bind values to the parameters
    
                $statement->bindValue(':title', $title);
                $statement->bindValue(':content', $content);
                
                //  Execute the INSERT.
                //  execute() will check for possible SQL injection and remove if necessary
                if($statement->execute()){
                    $id = $db->lastInsertId();
                    header("Location: page.php?id={$id}");
                    echo "Success";
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
        
 
    
?>
<?php include("header.php")?>
    <section id="content">
                <div class="blog-post">
                    <form action="./create-post.php" method="POST">
                        <label for="title">Title</label><br/>
                        <input type="text" id="title" name="title" size="50"><br/>
                        <label for="content">Content</label><br/>
                        <textarea name="content" rows="20" cols="60"></textarea><br/>
                        <input type="submit" name = "submit" value="Submit Blog">
                    </form>
                </div>
            </section>
<?php include("sidebar.php"); ?>
    <div class="clear"></div>
<?php include("footer.php")?>
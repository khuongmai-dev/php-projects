<!-- 
	Name: Khuong Mai
	Assignment: 1
-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Assignment 1 - Intro to PHP Challenge</title> 
	<link rel="stylesheet" href="main.css"> 
</head>
<body>
	<?php
	$config = [
		'gallery_name' => 'Khuong Gallery',
		'unsplash_categories' => ['Drink', 'Food', 'Beer', 'Travel', 'Urban', 'Candy', 'People', 'Architecture'],
		'local_images' => 
			['image1' => 
				['photographer_name' => 'Esaias Tan', 'photographer_link' => '@esaiastann', 'src' => 'image1' ],
			'image2' =>
				['photographer_name' => 'Marek Piwnicki', 'photographer_link' => '@marekpiwnicki', 'src' => 'image2' ], 
			'image3' =>
				['photographer_name' => 'Pete Alexopoulos', 'photographer_link' => '@pete_a', 'src' => 'image3' ], 
			'image4' =>
				['photographer_name' => 'Zetong Li', 'photographer_link' => '@zetong', 'src' => 'image4' ]
			]
	];
	?>

	<!-- Khuong Gallery -->
	<h1><?= $config['gallery_name'] ?></h1>
	<div id ="gallery">	
		<?php foreach($config['unsplash_categories'] as $values){?>
			<div>
				<h2><?= $values?></h2>
				<img src="https://source.unsplash.com/300x200/?<?= $values?>" alt="<?= $values?>">
			</div>
		<!-- for($i = 0; $i < count($config['unsplash_categories']); $i++){
			echo "<div>
					<h2>{$config['unsplash_categories'][$i]}</h2>
					<img src=\"https://source.unsplash.com/300x200/?{$config['unsplash_categories'][$i]}\" alt=\"{$config['unsplash_categories'][$i]}\">
				</div>"; -->
		<?php } ?>
	
	</div>

	<!-- 4 Large Image -->
	<h1><?= count($config['local_images'])?> Large Image</h1>
	<div id = "large-images">
	<?php foreach($config['local_images'] as $key => $values){ ?>
		<img src="images/<?= $values['src']?>.jpeg" alt="<?= $values['photographer_name']?>">
		<h3 class="photographer"><a href="https://unsplash.com/<?= $values['photographer_link']?>"><?= $values['photographer_name']?></a></h3>
	<?php } ?>
	</div>
</body>
</html>
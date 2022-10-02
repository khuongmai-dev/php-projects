<!-- 
	Name: Khuong Mai
	Assignment: 1
-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Assignment 1 - Intro to PHP Challenge</title> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/luminous-lightbox/2.0.1/luminous-basic.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/luminous-lightbox/2.0.1/Luminous.min.js"></script>
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
	<h1><?= $config['gallery_name'];?></h1>
	<div id = "gallery">
		<?php foreach($config['local_images'] as $key => $values){ ?>
				<!-- <?= print_r($values); ?> -->
				<div class="image">
					<h2><?= $values['photographer_name']?></h2>
					<a href="images/<?= $values['src'] ?>.jpeg"><img src="images/<?= $values['src']?>_thumbnail.jpeg" alt="<?= $values['photographer_name']?>" width = "300" height="200"></a>
				</div>

		<?php } ?>
	</div>
<script>
   new LuminousGallery(document.querySelectorAll(".image a"));
</script>
</body>
</html>
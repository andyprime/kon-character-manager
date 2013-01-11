<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
	<title>
		<?php echo $title_for_layout ? $title_for_layout : 'KONCM';  ?>
	</title>
	<?php
		echo $this->Html->meta('icon');

		//echo $this->Html->css('cake.generic');

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>

	<header>
		<h1>This is the totally rad header</h1>
	</header>
	<div id="content">

		<?php echo $this->Session->flash(); ?>

		<?php echo $this->fetch('content'); ?>
	</div>
	<footer>
		This is the useless footer
	</footer>

	<?php echo $this->element('sql_dump'); ?>
</body>
</html>

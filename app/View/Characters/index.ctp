
<ul>
<? foreach ($characters as $char): ?>
<li><? echo $char['Character']['name']; ?> </li>

<? endforeach; ?>
</ul>

<div>
<?
echo AuthComponent::user('id');
$u = AuthComponent::user();

Debugger::dump($u);
?>
</div>
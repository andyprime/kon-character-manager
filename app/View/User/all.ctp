<ul>
    <? foreach ($users as $user): ?>
        <li><? echo $user['User']['username'] ?></li>
    <? endforeach; ?>
</ul>
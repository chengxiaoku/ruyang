<?php
$splq = new SplQueue;
for($i = 0; $i < 10000; $i++)
{
    $data = "hello $i\n";
    $splq->push($data);

    if ($i % 100 == 99 and count($splq) > 100)
    {
        $popN = rand(10, 99);
        for ($j = 0; $j < $popN; $j++)
        {
            $splq->shift();
        }
    }
}

$popN = count($splq);
for ($j = 0; $j < $popN; $j++)
{
    echo $splq->pop();
}

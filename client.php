<?php
/**
 * Created by PhpStorm.
 * User: 程龙飞
 * Date: 2018/6/18
 * Time: 14:18
 */
$client = new swoole_client(SWOOLE_SOCK_TCP);

//连接到服务器
if (!$client->connect('127.0.0.1', 9523, 3))
{
    die("connect failed.");
}
//提示用户输入信息
fwrite(STDOUT, "请输入消息：");
//接收用户输入的信息
$msg = trim(fgets(STDIN));
//向服务器发送数据
if (!$client->send($msg))
{
    die("send failed.");
}

//从服务器接收数据
$data = $client->recv();

if (!$data)
{
    die("recv failed.");
}
echo $data;
//关闭连接
$client->close();
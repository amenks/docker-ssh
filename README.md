<h2>simple doker with ubuntu and ssh conncection</h2>

<p>With docker installed just run the following commands:</p>

<code>
docker build -t ssh_server_image .

docker run -d -p 2222:22 --name ssh_server_container ssh_server_image

ssh root@localhost -p 2222
</code>

<p>Remember to change the root password in line 14 of Dockerfile by something more safe.</p>

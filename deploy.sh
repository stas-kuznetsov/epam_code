
IPadr=34.88.207.247
username=root

echo "docker pull staskuznetsov/app1:$1; docker run -d -p 8080:8080 staskuznetsov/app1:$1" | ssh -i /key/id_rsa $username@$IPadr
 
#ssh -i /key/id_rsa $username@$IPadr << EOF
#docker pull staskuznetsov/app1:$1
# docker ps -q | docker rm
#docker run -d -p 8080:8080 staskuznetsov/app1:$1
#EOF

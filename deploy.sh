
IPadr=34.88.207.247
username=root


#ssh -i /key/id_rsa $username@$IPadr << EOF
#docker pull staskuznetsov/app1:$1
# docker ps -q | docker rm
#docker run -d -p 8080:8080 staskuznetsov/petclinic:$1
#EOF


ssh -i /key/id_rsa $username@$IPadr "$( cat <<'EOT'
docker pull staskuznetsov/app1:$1
docker ps -q | docker rm
docker run -d -p 8080:8080 staskuznetsov/petclinic:$1
EOT
)"

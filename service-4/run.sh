#! /bin/bash
sudo docker run -d -p 5003:5003 --name service_4 --network my_network localhost:8082/service_4

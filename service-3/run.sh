#! /bin/bash
sudo docker run -d -p 5002:5002 --name service_3 --network my_network localhost:8082/service_3

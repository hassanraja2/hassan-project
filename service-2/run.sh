#! /bin/bash
sudo docker run -d -p 5001:5001 --name service_2 --network my_network localhost:8082/service_2

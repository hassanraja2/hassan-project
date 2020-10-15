#! /bin/bash
sudo docker run -d -p 5000:5000 --name service_1 --network my_network service_1 

cd /opt/data-integration/; 
./kitchen.sh -file:"/home/ubuntu/etl/build_client_services.kjb" -level="Detailed" > /home/ubuntu/log/run_build_client_services.log 2>&1;
cd -;

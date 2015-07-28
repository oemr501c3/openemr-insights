cd /opt/data-integration/; 
./pan.sh -file:"/home/ubuntu/etl/facts/Client_Services/fact_client_services.ktr" -level="Detailed" > /home/ubuntu/log/run_fact_client_services.log 2>&1;
cd -;

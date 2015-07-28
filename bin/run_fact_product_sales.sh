cd /opt/data-integration/; 
./pan.sh -file:"/home/ubuntu/etl/facts/Client_Services/fact_product_sales.ktr" -level="Detailed" > /home/ubuntu/log/run_fact_product_sales.log 2>&1;
cd -;

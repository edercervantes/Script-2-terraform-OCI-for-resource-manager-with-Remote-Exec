#first, we are gonna add the cloud user and auth token to create_cloud_cred.sql
#cd ~/tmp/second_round_scripts
#sed -i 's+<your cloud userid>++' create_cloud_cred.sql

#unziping lab-resources
cd ~/tmp
unzip lab-resources
cd

#connecting to atp instance
cd ~/atp_wallet
unzip Wallet_orcl4py.zip
sed -i 's+?/network/admin+/home/opc/atp_wallet+' sqlnet.ora
export TNS_ADMIN=/home/opc/atp_wallet
sqlplus admin/helloWorld123@orcl4py_high  @/home/opc/tmp/second_round_scripts/test_connection.sql #Now we are connected

#copying wallet files to instantclient
cd
sudo cp -r /home/opc/atp_wallet/. /lib/oracle/18.5/client64/lib/network/admin

#We are going to create user and cloud credentials
cd ~/atp_wallet
sqlplus admin/helloWorld123@orcl4py_high @/home/opc/tmp/second_round_scripts/create_alpha_usr.sql
sqlplus admin/helloWorld123@orcl4py_high @/home/opc/tmp/second_round_scripts/create_cloud_cred.sql

#send data from object storage to ATPDB using datapump
impdp admin/helloWorld123@orcl4py_high directory=data_pump_dir credential=py4dev_cred dumpfile= <*****enter expdp_alpha.dmp url here*****> exclude=index, cluster, indextype, materialized_view, materialized_view_log, materialized_zonemap, db_link
######################################################################################^^I need to change the url of expdp_alpha.dmp = <this url is object specific within bucket>

#setting up 'alpha' user's environment
sqlplus alpha/a1phaOffice1_@orcl4py_high @/home/opc/tmp/second_round_scripts/create_spatial_metadata.sql
sqlplus alpha/a1phaOffice1_@orcl4py_high @/home/opc/tmp/second_round_scripts/create_cloud_cred.sql
sqlplus alpha/a1phaOffice1_@orcl4py_high @/home/opc/tmp/second_round_scripts/create_extern_table.sql
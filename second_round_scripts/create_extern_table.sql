begin
    dbms_cloud.create_external_table (
       table_name =>'credit_scoring_100k_ext',
       credential_name =>'py4dev_cred',
       file_uri_list =>'https://objectstorage.us-phoenix-1.oraclecloud.com/n/axouxcauizgc/b/py4dev/o/credit_scoring_100k_pq', /* user input url here */
       format =>  '{"type":"parquet",  "schema": "first"}'
    );
end;
/

exit;
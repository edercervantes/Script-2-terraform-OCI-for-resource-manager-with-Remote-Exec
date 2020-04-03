begin
    dbms_cloud.create_external_table (
       table_name =>'credit_scoring_100k_ext',
       credential_name =>'py4dev_cred',
       file_uri_list =>'<enter credit_scoring_100k_pq path here>', /* user input url here */
       format =>  '{"type":"parquet",  "schema": "first"}'
    );
end;
/

exit;
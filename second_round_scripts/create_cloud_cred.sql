begin
  DBMS_CLOUD.create_credential(
    credential_name => 'py4dev_cred',
    username => '<enter user name>', /* user inputs username of user that token was created for */
    password => '<enter cloud token>' /* user inputs token that was created */
  );
end;
/

exit;
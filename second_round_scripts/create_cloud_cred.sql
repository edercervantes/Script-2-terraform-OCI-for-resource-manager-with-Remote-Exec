begin
  DBMS_CLOUD.create_credential(
    credential_name => 'py4dev_cred',
    username => 'eder.cervantesalcala@sjsu.edu', /* user inputs username of user that token was created for */
    password => '0Fs{YhaIkx)<36DoF1CS' /* user inputs token that was created */
  );
end;
/

exit;
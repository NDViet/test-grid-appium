*** Keywords ***
Set Grid Remote URL
    ${is_set}    Run Keyword And Return Status    Variable Should Exist    ${REMOTE_URL}
    IF    not ${is_set}
        Set Global Variable    ${REMOTE_URL}    http://localhost:4444/wd/hub
    ELSE
        Set Global Variable    ${REMOTE_URL}    ${REMOTE_URL}
    END

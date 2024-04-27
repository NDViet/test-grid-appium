*** Settings ***
Resource            Keywords.robot
Library             SeleniumLibrary

Suite Setup         Run Keywords    Set Screenshot Directory    reports
...                     AND    Set Grid Remote URL
Suite Teardown      Close All Browsers

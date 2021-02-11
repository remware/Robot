*** Settings ***
Documentation     A test suite with a single test for refreshing dashboard page.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Home
    Open Browser To Home Page
    Submit Refresh
    Dashboard Page Should Be Refreshed
    [Teardown]    Close Browser
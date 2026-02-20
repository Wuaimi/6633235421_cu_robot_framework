*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment.robot
Resource    ../../keywords/ui/page/homepage.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Verify hotel booking form - happy case
    Open browser student registration form
    Wait student registration load complete
    Input and verify firstname
    Input and verify lastname
    Select From List By Label    id=input_3   Male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click Element    id=label_input_51_0
    Click submit application
    #id=text_84 is the "Your registration has been completed"
    Wait Until Element Is Visible    id=text_84    20s
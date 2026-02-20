*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment.robot
Resource    ../../keywords/ui/page/homepage.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Verify hotel booking form - single fail firstname
    Open browser student registration form
    Wait student registration load complete

    # No firstName
    Input and verify lastname
    Select From List By Label    id=input_3    Male
    Input and verify student_id
    Input and verify mobile_number
    Input and verify email
    Click Element    id=label_input_51_0

    Click submit application

    Element Should Contain    id=error-message_input_48   This field is required.

#Lastname is not required

Verify hotel booking form - single fail studentId
    Open browser student registration form
    Wait student registration load complete

    # No studentId
    Input and verify firstname
    Input and verify lastname
    Select From List By Label    id=input_3    Male
    Input and verify mobile_number
    Input and verify email
    Click Element    id=label_input_51_0

    Click submit application

    Element Should Contain    id=error-message_input_14   This field is required.

Verify hotel booking form - single fail mobile number
    Open browser student registration form
    Wait student registration load complete

    # No mobile number
    Input and verify firstname
    Input and verify lastname
    Select From List By Label    id=input_3    Male
    Input and verify student_id
    Input and verify email
    Click Element    id=label_input_51_0

    Click submit application

    Element Should Contain    id=error-message_input_27_full   This field is required.

Verify hotel booking form - single fail email
    Open browser student registration form
    Wait student registration load complete

    # No email
    Input and verify firstname
    Input and verify lastname
    Select From List By Label    id=input_3    Male
    Input and verify student_id
    Input and verify mobile_number 
    Click Element    id=label_input_51_0

    Click submit application

    Element Should Contain    id=error-message_input_6  This field is required.
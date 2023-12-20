*** Settings ***
#Library     SeleniumLibrary
Library    Browser
Library    String
Resource   locators.resource
Resource   variables.resource

*** Test Cases ***
Register User
    Open Browser  ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Link    ${REGISTER_LINK}
    Click Button  ${MALE_BUTTON}
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}
    Input Text    ${EMAIL_FIELD}    ${EMAIL}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${PASSWORD}
    Click Button  ${REGISTER_BUTTON}
    Page Should Contain    ${REGISTRATION_SUCCESS}

Login and Logout
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Link    ${LOGIN_LINK}
    Input Text    ${EMAIL_FIELD}    ${EMAIL}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Click Link    ${LOGOUT_LINK}
    Page Should Contain    ${LOGIN_LINK}
    
Navigate Through Electronics Apparel Pages
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Link    ${BOOKS_LINK}
    Page Should Contain    ${BOOKS_TEXT}
    Click Link    ${ELECTRONICS_LINK}
    Page Should Contain    ${ELECTRONICS_TEXT}
    Click Link    ${APPAREL_LINK}
    Page Should Contain    ${APPAREL_TEXT}
    Close Browser

Submit Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Link    ${CONTACT_LINK}
    Input Text    ${FULLNAME_FIELD}    ${FULL_NAME}
    Input Text    ${EMAIL_FIELD}    ${EMAIL}
    Input Text    ${COMMENT_FIELD}    ${COMMENT}
    Click Button    ${SUBMIT_BUTTON}
    Page Should Contain    ${ENQUIRY_SUCCESS}
    Close Browser
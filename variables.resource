*** Variables ***
${BROWSER}    chrome
${URL}        https://demowebshop.tricentis.com/
# Test data
${FIRST_NAME}    Huub
${LAST_NAME}    Maas    
${FULL_NAME}    Huub Maas
${EMAIL}    jan.maas@example.com
${PASSWORD}    password123
${PRODUCT_VALUE}    2
${COMMENT}    Test 1-9 :; ⟨ ⟩, / / â, ê, î, ô, û, ŵ, ŷ, ä, ë, ï, ö, ü, ẅ, ÿ, á, é, í, ó, ú, ẃ, ý, à, è, ì, ò, ù, ẁ, ỳ
#Test assertions
${REGISTRATION_SUCCESS}    Your registration completed
${ENQUIRY_SUCCESS}    Your enquiry has been successfully sent to the store owner.
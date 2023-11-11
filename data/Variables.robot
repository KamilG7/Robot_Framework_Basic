*** Variables ***
${BROWSER} =            chrome
${URL_HOME_PAGE} =      https://ultimateqa.com/
${URL_SIGN_UP} =    https://courses.ultimateqa.com/users/sign_up
${URL_SIGN_IN} =    https://courses.ultimateqa.com/users/sign_in


${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR} =                xpath=//img[@class="wp-image-216051"]


${PROFESSIONAL_SERVICES_BUTTON} =    xpath=//a[contains(text(), "Professional Services")]
${PROFESSIONAL_SERVICES_LOADED_CONFIRMATION} =    xpath=//div/h1[@class="et_pb_module_header"]
${PROFESSIONAL_SERVICES_NAME_LOCATOR} =    xpath=//input[@id="wpforms-217788-field_0"]
${PROFESSIONAL_SERVICES_EMAIL_LOCATOR} =    xpath=//input[@id="wpforms-217788-field_1"]
${PROFESSIONAL_SERVICES_JOB_LOCATOR} =      xpath=//input[@id="wpforms-217788-field_4"]
${PROFESSIONAL_SERVICES_COMPANY_LOCATOR} =      xpath=//input[@id="wpforms-217788-field_3"]
${PROFESSIONAL_SERVICES_COMMENT_LOCATOR} =      xpath=//textarea[@id="wpforms-217788-field_2"]
${PROFESSIONAL_SERVICES_SUBMIT_LOCATOR} =       xpath=//button[@id="wpforms-submit-217788"]
${PROFESSIONAL_SERVICES_SENT_LOCATOR} =    xpath=//div[@class="wpforms-confirmation-container-full wpforms-confirmation-scroll"]
${PROFESSIONAL_SERVICES_CONFIRMATION_LOCATOR} =    xpath=//div[@class="wpforms-confirmation-container-full wpforms-confirmation-scroll"]/p


${PROFESSIONAL_SERVICES_NAME} =     Kamil
${PROFESSIONAL_SERVICES_EMAIL} =       xxx@gmail.com
${PROFESSIONAL_SERVICES_JOB} =          Checker
${PROFESSIONAL_SERVICES_COMPANY} =      Checker Corp
${PROFESSIONAL_SERVICES_COMMENT} =      Comment with lenght of at least 30 characters
${PROFESSIONAL_SERVICES_CONFIRMATION} =    Thank you!


${USER_FIRST_NAME} =
${USER_LAST_NAME} =
${USER_PASSWORD} =
${USER_EMAIL} =
${USER_INCORRECT_EMAIL} =
${USER_INCORRECT_PASSWORD} =

${REGISTRATION_FIRST_NAME_LOCATOR} =
${REGISTRATION_LAST_NAME_LOCATOR} =
${REGISTRATION_PASSWORD_LOCATOR} =
${REGISTRATION_EMAIL_LOCATOR} =
${REGISTRATION_CHECKBOX_LOCATOR} =
${REGISTRATION_TERMS_LOCATOR} =
${REGISTRATION_PRIVACY_LOCATOR} =
${REGISTRATION_SIGN_UP_BUTTON_LOCATOR} =
${SIGN_UP_PAGE_LOADED_CONFIRMATION_LOCATOR} =    xpath=//h2[@class="page__heading"]
${SIGN_UP_PAGE_HEADING} =    Create a new account
${REGISTRATION_USER_DROPDOWN} =    //button[@class='dropdown__toggle-button']
${REGISTRATION_SIGN_OUT} =      //a[contains(text(), "Sign Out")]
${TERMS_AND_CONDITION_HEADING_LOACTOR} =
${TERMS_AND_CONDITIONS_HEADING} =
${PRIVACY_POLICY_LOCATOR} =
${PRIVACY_POLICY_HEADING} =


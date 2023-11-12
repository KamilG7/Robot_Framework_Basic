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


${USER_FIRST_NAME} =    Kamil
${USER_LAST_NAME} =     Gal
${USER_PASSWORD} =      strongone123
${USER_EMAIL} =         xxx7x@gmail.com
${USER_INCORRECT_EMAIL} =       xxxx.com
${USER_INCORRECT_PASSWORD} =        weak


${REGISTRATION_FIRST_NAME_LOCATOR} =        id=user[first_name]
${REGISTRATION_LAST_NAME_LOCATOR} =         id=user[last_name]
${REGISTRATION_PASSWORD_LOCATOR} =          id=user[password]
${REGISTRATION_EMAIL_LOCATOR} =             id=user[email]
${REGISTRATION_CHECKBOX_LOCATOR} =          id=user[terms]
${REGISTRATION_TERMS_LOCATOR} =             xpath=//label/a[1]
${REGISTRATION_PRIVACY_LOCATOR} =           xpath=//label/a[2]
${REGISTRATION_SIGN_UP_BUTTON_LOCATOR} =            xpath=//div/button[@class='button button-primary g-recaptcha']
${SIGN_UP_PAGE_LOADED_CONFIRMATION_LOCATOR} =    xpath=//h2[@class="page__heading"]
${SIGN_UP_PAGE_HEADING} =    Create a new account
${REGISTRATION_USER_DROPDOWN} =    //button[@class='dropdown__toggle-button']
${REGISTRATION_SIGN_OUT} =      //a[contains(text(), "Sign Out")]
${TERMS_AND_CONDITION_HEADING_LOACTOR} =        xpath=//div/p[2]/span/span/span
${TERMS_AND_CONDITIONS_HEADING} =           SERVICE AGREEMENT AND TERMS OF USE
${PRIVACY_POLICY_LOCATOR} =             xpath=//main/div/h3
${PRIVACY_POLICY_HEADING} =         What kind of data is processed?
${REGISTRATION_ERROR_LIST_LOCATOR} =        //li[@class='form-error__list-item']
${REGISTRATION_FIRST_NAME_ERROR} =    First name can't be blank
${REGISTRATION_LAST_NAME_ERROR} =       Last name can't be blank
${REGISTRATION_EMAIL_ERROR} =    Email can't be blank
${REGISTRATION_INVALID_EMAIL_ERROR} =    Email is invalid
${REGISTRATION_WEAK_PASSWORD_ERROR} =    Password must be at least 8 characters
${REGISTRATION_USED_EMAIL_ERROR} =    Email has already been taken

${LOGIN_EMAIL_LOCATOR} =
${LOGIN_PASSWORD_LOCATOR} =
${LOGIN_FORGOT_PASSWORD_LOCATOR} =
${LOGIN_SIGN_IN_BUTTON_LOCATOR} =
${LOGIN_PAGE_LOADED_CONFIRMATION_LOCATOR} =
${LOGIN_PAGE_CONFIRMATION_HEADING} =




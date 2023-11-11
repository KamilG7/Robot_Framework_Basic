*** Variables ***
${BROWSER} =            chrome
${URL_HOME_PAGE} =      https://ultimateqa.com/


${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR} =                xpath=//img[@class="wp-image-216051"]


${PROFESSIONAL_SERVICES_BUTTON} =    xpath=//a[contains(text(), "Professional Services")]
${PROFESSIONAL_SERVICES_LOADED_CONFIRMATION} =    xpath=//div/h1[@class="et_pb_module_header"]
${PROFESSIONAL_SERVICES_NAME_LOCATOR} =    xpath=//input[@id="wpforms-217788-field_0"]
${PROFESSIONAL_SERVICES_EMAIL_LOCATOR} =    xpath=//input[@id="wpforms-217788-field_1"]
${PROFESSIONAL_SERVICES_JOB_LOCATOR} =      xpath=//input[@id="wpforms-217788-field_4"]
${PROFESSIONAL_SERVICES_COMPANY_LOCATOR} =      xpath=/input[@id="wpforms-217788-field_3"]
${PROFESSIONAL_SERVICES_COMMENT_LOCATOR} =      xpath=//textarea[@id="wpforms-217788-field_2"]
${PROFESSIONAL_SERVICES_SUBMIT_LOCATOR} =       //button[@id="wpforms-submit-217788"]
${PROFESSIONAL_SERVICES_CONFIRMATION_LOCATOR} =    xpath=//div[@class="et-pb-contact-message"]/p


${PROFESSIONAL_SERVICES_NAME} =     Kamil
${PROFESSIONAL_SERVICES_EMAIL} =       xxx@gmail.com
${PROFESSIONAL_SERVICES_JOB} =          Checker
${PROFESSIONAL_SERVICES_COMPANY} =      Checker Corp
${PROFESSIONAL_SERVICES_COMMENT} =      Comment with lenght of at least 30 characters
${PROFESSIONAL_SERVICES_CONFIRMATION} =    We have much appreciated the message and will contact you soon!

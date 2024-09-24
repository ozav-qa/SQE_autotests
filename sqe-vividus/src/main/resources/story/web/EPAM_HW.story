
Scenario: Check the title EPAM Site
Given I am on page with URL `https://www.epam.com/`
Then page title IS_EQUAL_TO `EPAM | Software Engineering & Product Development Services`

Scenario: Check that allow to change language to UA
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `xpath(//li/div[contains (@class, 'location-selector-ui')])`
When I click on element located by `xpath(//li/div[contains (@class, 'location-selector-ui')]//a[@lang='uk'])`
Then the page with the URL 'https://careers.epam.ua/' is loaded

Scenario: Check the policies list on EPAM.com
Given I am on page with URL `https://www.epam.com/`
When I scroll element located `xpath(//h2[@class='heading large-preheader' and contains(text(), 'policies')])` into view
Then an element with the name 'INVESTORS' exists
And an element with the name 'COOKIE POLICY' exists
And an element with the name 'OPEN SOURCE' exists
And an element with the name 'APPLICANT PRIVACY NOTICE' exists
And an element with the name 'PRIVACY POLICY' exists
And an element with the name 'WEB ACCESSIBILITY' exists

Scenario: Check that allow to switch location list by region
Given I am on page with URL `https://www.epam.com/`
When I scroll element located `xpath(//*[@id="id-890298b8-f4a7-3f75-8a76-be36dc4490fd"]/div[1]/div/div)` into view
Then an element with the name 'AMERICAS' exists
And an element with the name 'EMEA' exists
And an element with the name 'APAC' exists
When I click on element located by `xpath(//div[@class='tabs-23__title js-tabs-title']//a[@class='tabs-23__link js-tabs-link' and contains(text(), 'EMEA')])`
Then text `Armenia` exists

Scenario: Check the search function
Given I am on page with URL `https://www.epam.com/`
When I click on element located by `xpath(//div[@class='header-search-ui header-search-ui-23 header__control'])`
When I enter `AI` in field located by `xpath(//*[@id="new_form_search"])`
When I click on a button with the name 'FIND'
Then the page with the URL 'https://www.epam.com/search?q=AI' is loaded

Scenario: Check that the Company logo on the header lead to the main page
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `xpath(//div[@class='header__logo-container'])`
Then the page with the URL 'https://www.epam.com/' is loaded

Scenario: Check form's fields validation
Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`
When I enter `John` in field located by `xpath(//input[contains(@id, 'form_constructor_user_first_name') and @type='text'])`
When I enter `Smith` in field located by `xpath(//input[contains(@id, 'form_constructor_user_last_name') and @type='text'])`
When I enter `JSmith1@test.com` in field located by `xpath(//input[contains(@id, 'form_constructor_user_email') and @type='text'])`
When I enter `5555555` in field located by `xpath(//input[contains(@id, 'form_constructor_user_phone') and @type='text'])`
When I click on element located by `xpath(//span[contains(@aria-labelledby,'comment_how_hear')]//b)`
When I click on element located by `xpath(//ul[contains(@id,'how_hear_about-results')]//li[contains(text(),'Worked at EPAM')])`
When I check checkbox located by `xpath(//*[@id="_content_epam_en_about_who-we-are_contact_jcr_content_content-container_section_section-par_form_constructor"]/div[2]/div/div/div/div/div[9]/div/div[2]/label)`
When I click on a button with the name 'SUBMIT'
Then text `Thank you for contacting us.` exists

Scenario: Verify that allows login a User
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `xpath(//a[@href='/login' and contains(@class, 'ico-login')])`
When I enter `VPupkin@test.com` in field located by `xpath(//input[@id='Email'])`
When I enter `123456John` in field located by `xpath(//input[@id='Password'])`
When I click on a button with the name 'Log in'
Then an element with the name 'VPupkin@test.com' exists

Scenario: Verify that allows adding an item to the Wishlist
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `xpath(//div[@class='picture']/a[@href='/25-virtual-gift-card'])`
When I enter `Mary` in field located by `xpath(//input[@id='giftcard_2_RecipientName'])`
When I enter `MPupkin@test.com` in field located by `xpath(//input[@id='giftcard_2_RecipientEmail'])`
When I click on a button with the name 'Add to wishlist'
Then text `The product has been added to your` exists

Scenario: Verify that allows adding an item to the card
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `xpath(//div[@class='picture']/a[@href='/141-inch-laptop'])`
When I click on element located by `xpath(//input[@id='add-to-cart-button-31'])`
Then text `The product has been added to your` exists

Scenario: Verify that allows checkout an item
Given I am on page with URL `https://demowebshop.tricentis.com/cart`
When I check checkbox located by `xpath(//input[@name='termsofservice'])`
When I click on a button with the name 'Checkout'
Then text `Billing address` exists

Scenario: Verify that allows removing an item from the card
Given I am on page with URL `https://demowebshop.tricentis.com/cart`
When I check checkbox located by `xpath(//input[@name='removefromcart'])`
When I click on element located by `xpath(//input[@name='updatecart'])`
Then text `Your Shopping Cart is empty!` exists

Scenario: Verify that allows changing number of items on page
Given I am on page with URL `https://demowebshop.tricentis.com/`
When I click on element located by `xpath(//div[@class='block block-category-navigation']//a[@href='/books'])`
When I click on element located by `xpath(//select[@id='products-pagesize']/option[@value='https://demowebshop.tricentis.com/books?pagesize=4'])`
Then the page with the URL 'https://demowebshop.tricentis.com/books?pagesize=4' is loaded

Scenario: Verify that allows sorting items
Given I am on page with URL `https://demowebshop.tricentis.com/books?pagesize=4`
When I click on element located by `xpath(//select[@id='products-orderby']/option[@value='https://demowebshop.tricentis.com/books?pagesize=4&orderby=6'])`
Then the page with the URL 'https://demowebshop.tricentis.com/books?pagesize=4&orderby=6' is loaded

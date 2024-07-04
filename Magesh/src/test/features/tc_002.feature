Feature: Product List Filters, Pagination, and Product Options

  Background:
    Given The user logged into the application
    And The user is on the Products page

  Scenario Outline: Filter products by status and type
    When The user click on the filter dropdown
    And The user select the "Active" status
    And The user select the "Veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Active" status and "Veg" type
    When The user click on the filter dropdown
    And The user select the "Active" status
    And The user select the "Non-veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Active" status and "Non-veg" type
    When The user click on the filter dropdown
    And The user select the "Inactive" status
    And The user select the "Veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Inactive" status and "Veg" type
    When The user click on the filter dropdown
    And The user select the "Inactive" status
    And The user select the "Non-Veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Inactive" status and "Non-Veg" type
    When The user click on the filter dropdown
    And The user select the "Freezed" status
    And The user select the "Veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Freezed" status and "Veg" type
    When The user click on the filter dropdown
    And The user select the "Freezed" status
    And The user select the "Non-Veg" type
    And The user click on the Filter button
    Then The user should see the products filtered by the "Freezed" status and "Non-Veg" type

  Scenario: Filter products by stock status
    When The user click on the stock status dropdown
    And The user select the "All Products" option
    Then The user should see the products filtered by "All Products"
    And the total number of items should be "4971"
    When The user click on the stock status dropdown
    And The user select the "Stock At Hand" option
    Then The user should see the products filtered by "Stock At Hand"
    And the total number of items should be "4968"
    When The user click on the stock status dropdown
    And The user select the "Low on Stock" option
    Then The user should see the products filtered by "Low on Stock"
    And the total number of items should be "3"
    When The user click on the stock status dropdown
    And The user select the "Out of Stock" option
    Then The user should see the products filtered by "Out of Stock"
    And the total number of items should be "0"

  Scenario: Navigate through multiple pages of product list
    Given The user see a total of "113" products listed
    When The user navigate to the next page
    Then The user should see the products listed on the second page
    When The user navigate to the previous page
    Then The user should see the products listed on the first page

  Scenario: Perform actions on a product
    Given The user see a product named "Lemon Juice"
    When The user click on the three dots menu for "Lemon Juice"
    Then The user should see options to "Edit", "Update Qty", and "Freeze"
    When The user select the "Edit" option
    Then The user should be taken to the edit page for "Lemon Juice"
    When The user select the "Update Qty" option
    Then The user should see a modal to update the quantity for "Lemon Juice"
    When The user select the "Freeze" option
    Then the status of "Lemon Juice" should change to "Freezed"

  Scenario: Add a new product
    When The user click on the "Add New Product" button
    Then The user should be taken to the add new product page
    Then The user should be taken to the edit page for "Lemon Juice"
    And The user should see options to Upload image, product name, product category, price, product type, and status
    When The user click on the Upload image button
    And The user upload a new photo
    Then the photo should be updated successfully
    When The user Add the product name to "Chicken samosa"
    Then the product name should be updated to "Chicken samosa"
    When The user click the product category the category dropdown should open
    Then the product category should be selected to "Snack"
    When The user add the price to "50"
    Then the price should be added as "₹ 50"
    When The user select the product type to "Non-veg"
    Then the product type should be selected as "Non-veg"
    When The user select the status to "Active"
    Then the status should be updated to "Active"
    When The user click "Save changes" the new product should be added in the home screen of the products page

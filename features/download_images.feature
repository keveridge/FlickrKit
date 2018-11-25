Feature: Render images

  Background:

    Given I run the "download_images" function


  Scenario: Limit

    When I specify a limit to the number of images to download
    Then I see that up that number of images are downloaded


  Scenario: Image size

    When I specify an image size
    Then I see that the the downloaded images are of that size


  Scenario: Default image size

    When I do not specify an image size
    Then I see that the render image is comprised of "q" sized images (large square, 150x150)


  Scenario: Invalid image size specified

    When I specify an invalid image size
    Then I see that the render image is comprised of default sized images
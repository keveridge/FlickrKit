Feature: Render images

  Background:

    Given I run the "render_images" function


  Scenario: Grid render

    When I specify the type as "grid"
    Then I see a grid of images


  Scenario: Hortizonal render

    When I specify the type as "horizontal"
    Then I see a horizontal line of images


  Scenario: Vertical render

    When I specify the type as "vertical"
    Then I see a vertical line of images


  Scenario: Default render

    When I do not specify the type
    Then I see a grid of images


  Scenario: Limit

    When I specify a limit to the number of images in the render
    Then I see that the render is comprised of up to that number of images


  Scenario: Image size

    When I specify an image size
    Then I see that the render image is comprised of images of that size


  Scenario: Default image size

    When I do not specify an image size
    Then I see that the render image is comprised of "q" sized images (large square, 150x150)


  Scenario: Invalid image size specified

    When I specify an invalid image size
    Then I see that the render image is comprised of default sized images
## What is FlickrKit?

FlickrKit is an [iOS shortcut](https://support.apple.com/guide/shortcuts/welcome/ios) that acts as something akin to a library, allowing your own shortcuts to:

* perform any public API calls, including searching for users, listing galleries, image groups and retrieving images;
* build lists of Flickr image links;
* download sets of images;
* render a set of images as a vertical line, horizontal line or grid.
	
> ⓘ Flickr provides free API keys for non-commericial use.

## Installing FlickrKit

The shortcut can be installed from the following link:

> [Install FlickrKit](https://routinehub.co/shortcut/1022)
	

## Using FlickrKit

### Making an API call

#### API methods

FlickrKit supports any API call that does not require authentication.

A full list of API methods can be found at the link below:

> https://www.flickr.com/services/api/

#### API request format

Your shortcut can make a public GET API query using the dictionary following format:

Key | Value
----|------
method_name | _Name of the Flickr method_
params _(optional)_ | _Dictionary of Flickr method parameters_
jsonpath _(optional)_ | _JSONPath query to filter the response_
api_key | _FlickrAPI Key_

#### Examples

##### Without parameters

Not all API calls require parameters. An example includes when returning a list of interesting images.

![flickr.interestingness.getList](https://i.imgur.com/uUDBCzS.png)

##### With parameters

However most API calls require you to specify one or more parameters, for example, when returning a list of popular images from the [NASA Hubble Telescope account](https://www.flickr.com/photos/nasahubble).

![flickr.photos.getRecent](https://i.imgur.com/KFsbYke.jpg)

##### Retrieving a single value with JSONPath

Calling the API will return a large JSON object. You can narrow down the information you want to return by using a JSONPath query.

> ⓘ To find out more about the JSONPath query language, see: https://goessner.net/articles/JsonPath/

###### Query

![Single JSON Path Query](https://i.imgur.com/WYlc9jl.png)

###### Result

```
39873962@N08
```

_*Note:* Shortcuts can't convert a JSON array to a dictionary, so you'll need to use the above regular expression to return the value._

##### Retrieving multiple values

###### Query

![Camera Brands](https://i.imgur.com/qImVdi3.png)

###### Result

A list of camera brand names.

_*Note:* Again, Shortcuts can't convert a JSON array to a dictionary, so you'll need to use the above regular expression to return a list of strings._


## Functions

FlickrKit also provides a set of functions that can be used along with any API calls that return images.

### Image links

The following function returns a list of image links for photos returned from an API call.

> ⓘ The API itself does not return image links. This function combines image properties to form the necessary links.

Your shortcut can call the function using the following dictionary format:

Key | Value
----|------
function | image_links
method_call | _Dictionary defining the API call._
image\_size _(optional)_ | _The size of the images, specified using the Flickr image size suffix. If not specified, the value_ ```q``` _is used._
limit _(optional)_| _The maximum number of links to return. If not specified, all links are returned._

> ⓘ Flickr can provide an image in a number of sizes. A list of Flickr image size suffixes can be found at: https://www.flickr.com/services/api/misc.urls.html

#### Examples

Returns up a list of up to 5 popular images URLs from the [NASA Hubble Telescope account](https://www.flickr.com/photos/nasahubble).

![image_links](https://i.imgur.com/ajfE0Bt.png)

### Download images

The following function downloads images for photos returned from an API call.

Your shortcut can call the function using the following dictionary format:

Key | Value
----|------
function | download_images
method_call | _Dictionary defining the API call._
image\_size _(optional)_ | _The size of the images, specified using the Flickr image size suffix. If not specified, the value_ ```q``` _is used._
limit _(optional)_| _The maximum number of images to download. If not specified, all images are downloaded._

#### Examples

Downloads up to 5 popular images URLs from the [NASA Hubble Telescope account](https://www.flickr.com/photos/nasahubble).

![download_images](https://i.imgur.com/4dS7CAP.png)

### Render images

The following function downloads images for photos returned from an API call and arranges them into a vertical line, horizontal line or grid.

Your shortcut can call the function using the following dictionary format:

Key | Value
----|------
function | render_images
method_call | _Dictionary defining the API call._
image\_size _(optional)_ | _The size of the images, specified using the Flickr image size suffix. If not specified, the value_ ```q``` _is used._
limit _(optional)_| _The maximum number of images to use in the render. If not specified, all images are used._
spacing _(optional)_ | _The spacing between the images in pixels. Defaults to 0._

#### Examples

Downloads up to 9 popular images URLs from the [NASA Hubble Telescope account](https://www.flickr.com/photos/nasahubble) and combines them into a 3 by 3 grid.

##### Query

![render_images](https://i.imgur.com/zdKWCA4.png)

##### Result

![render_grid](https://i.imgur.com/V8qvgy1.jpg)


## Example shortcuts using FlickrKit

The following shortcuts demonstrate the use of FlickrKit

- [Download Interesting Images](https://routinehub.co/shortcut/1035)
- [Grid of Recent Hubble Images](https://routinehub.co/shortcut/1036)

_Feel free to use this shortcuts when implementing your own, but ensure you sign up for and use your own API keys._
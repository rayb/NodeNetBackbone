# NodeNetBackbone

## A Node based web server app for delivering timely patient information

## Websites Required

With Node on IIS, each website should be run at as it's own root site (not as a Virtual Directory)

Here's how the sites are set up on a machine:

Disable "Default Web Site" or change it's port away from 80
Add:

* NodeNetBackbone on port 80
* NodeNetBackboneSvc on port 4000 (our rest server)

## Software Stack

* .Net Restful Data Service (to server up data for app)
* Express JS (Minimal Server Side MVC framework)
* Backbone JS (client side MVC framework)

Together, this stack will work well together to deliver a single page patient management app

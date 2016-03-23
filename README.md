a dead simple SpringBoard-like grid menu for iOS with landscape support

# Introduction

NAMenu is a dead simple grid menu you can use to launch other view controllers. It features smooth animation
and full landscape support. It was designed to be minimalistic and dead-easy to use or modify.
It's licensed under the Apache license so feel modify it and share your changes with the world.

# Getting Started

You can add `NAMenu` to you your project in under 5 minutes!
Simply copy the files in the `Source` directory to your project.

There are two ways to create your menu. The easiest way to use NAMenu is to simply subclass NAMenuViewController and set the `menuItems` array to
an array of `NAMenuItem` objects (see the included example project for an example of how to do this).

You can also drop an `NAMenuView` in an existing view controller and implement its delegate methods (which are
similar to UITableViewDelegate methods).

Adding a menu item is only a few lines of code:

```objective-c
// First Item
NAMenuItem *item1 = [[[NAMenuItem alloc] initWithTitle:@"First Item"
                                                 image:[UIImage imageNamed:@"icon.png"]
                                               vcClass:[SampleViewController class]] autorelease];
[items addObject:item1];
```

# Screenshots

![Portrait Mode](https://raw.githubusercontent.com/camsaul/NAMenu/master/Screenshots/screenshot1.png)

![Landscape Mode](https://raw.githubusercontent.com/camsaul/NAMenu/master/Screenshots/screenshot2.png)

![Landscape Mode, Scrolled](https://raw.githubusercontent.com/camsaul/NAMenu/master/Screenshots/screenshot3.png)

# License

© 2012-2016 [Cam Saül](http://camsaul.com)

Distributed under the terms of the Apache license.

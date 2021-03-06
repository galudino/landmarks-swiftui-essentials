#  landmarks-swiftui-essentials

## About
"Landmarks" iOS application from Chapter 1: SwiftUI Essentials<br>
(https://developer.apple.com/tutorials/swiftui)<br>

This app was created from the following tutorials:

- https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
```
Creating and Combining Views
This tutorial guides you through building Landmarks — an app for discovering and sharing the places you love. 
You’ll start by building the view that shows a landmark’s details.

To lay out the views, Landmarks uses stacks to combine and layer the image and text view components. 
To add a map to the view, you’ll include a standard MapKit component. As you refine the view’s design, 
Xcode provides real-time feedback so you can see how those changes translate into code.
```
- https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
```
Building Lists and Navigation
With the basic landmark detail view set up, you need to provide a way for users to see the full list of landmarks, and to view the details about each location.
You’ll create views that can show information about any landmark, and dynamically generate a scrolling list that a user can tap to see a detail view for a landmark. To fine-tune the UI, you’ll use Xcode’s canvas to render multiple previews at different device sizes.
```
- https://developer.apple.com/tutorials/swiftui/handling-user-input
```
Handling User Input
In the Landmarks app, a user can flag their favorite places, and filter the list to show just their favorites. To create this feature, you’ll start by adding a switch to the list so users can focus on just their favorites, and then you’ll add a star-shaped button that a user taps to flag a landmark as a favorite.
Download the starter project and follow along with this tutorial, or open the finished project and explore the code on your own.
```

## What `LandmarksApp` does

`LandmarksApp` displays a list of landmarks, each modeled by a `Landmark` object.<br>
The `Landmark` objects are decoded from a provided JSON file, `landmarkData.json`.<br>

The JSON file provides the following attributes to be modeled by the `Landmark` object:
```
name
category
city
state
id
isFeature
isFavorite
park
coordinates
description
```

Images of the landmarks are provided in this project's asset catalog.

The user can scroll up and down the list of landmarks,<br>
and tap on a specific landmark in the list to see its detail page.<br>

There is a "Favorites only" switch at the top of the list<br>
that will filter out landmarks that have not been marked as a "favorite".

A landmark can be "favorited" on its detail page -- which is accessed by tapping<br>
the desired entry in the list view.

A landmark's detail page consists of
    - A map of the landmark, derived from the coordinate data provided by `landmarkData.json`
    - An image of the landmark
    - A user-interactable star, that can be tapped to mark as a "favorite".
    - A description of the landmark.

Written on macOS 11.4 Big Sur using Xcode 12.5.
Tested with an iPhone 12 Pro Max simulator running iOS 14.5.

## Purpose

In order to further my understanding of Swift and SwiftUI,<br>
I will be completing a series of tutorials from Apple's SwiftUI developer page.<br>
https://developer.apple.com/tutorials/swiftui#swiftui-essentials

## Completed so far:

- [x] Creating and Combining Views
- [x] Building Lists and Navigation
- [x] Handling User Input

## To build and run

- `git clone` this repository
- Open `Landmarks-tutorial-swiftui.xcodeproj` in Xcode
- Hit <b>Command + R</b> to build and run this project


# flutter_food_app

<img src="https://user-images.githubusercontent.com/64107753/178158072-59248728-e6c4-4eeb-9373-df1742ca34dc.png">

Foody is an example structural app made with GetX state management and Firebase for backend.

## Structure

Project has support of multiple data fetching with futures using FutureBuilder [Find more here with my blog post](https://medium.com/@umutarpt/multiple-data-fetching-structure-with-future-builder-dio-and-getx-in-flutter-39f0dfaafe1)

Has MVVM pattern with using GetX controllers as View Models.

Controller creation is handled with GetPages and Bindings.

No file has big chunks of code. Code is always nested and separated by files.

Apps design is handled with themes,const variables.

Folder by feature is present in the app except 'Services' and 'Models' folders.

'Services' and 'Models' are in global because we may have situations where we need to use them on more than one modules.

[More info about folder structure here](https://levelup.gitconnected.com/scalable-flutter-folder-structure-for-big-apps-480a9b266793)

## Tools

I use GetX as state management because it is very easiy and it is like a framework more than state management. It comes handy in very tight situations.

Because this is a example app I used Firebase as backend to complete the app faster. NoSQL really makes wonders.

## What would I have done if this was a reall app.

I would create an interceptor to log fetching information such as Response data and Request data.

I would have updated the design with using Figma.

I would have created more UX friendly app. Ability to let user do things more freely across the app.

Plus more high level widgets would have been created.

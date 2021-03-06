# TO Do Application

I have used many principles for achieving goals for making this application **more reliable** and **maintainable**,
which provides the progressive evolution of the project.

## The Functionalities Which This Application Contains:

- Scheduling the tasks for:
  - Today
  - Tomorrow
  - SomeDay
- Moving Tasks From Day To Day 
- CURD Operations
- Enable The User To Share This Application With His Friends
- Make The User Rate This Application On Google Play
- Supporting English And Arabic Languages

## For Achieving  These Functionality I Have Used:

- **Domain-Driven Design** Architecture. 


![DDD Architecture Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FDDD-Flutter-Diagram-v3.svg?alt=media&token=8666be3c-21e2-428f-8cb5-00b13b910047)

- For Databse I have used SQL Lite by using the handy [sqflite](https://pub.dev/packages/sqflite) package.
-  For Json Serializer, I have used package [json_serializable](https://pub.dev/packages/json_serializable).
- Using Singleton Design Pattern for creating a single point if access to a particular instance, By Using [injectable](https://pub.dev/packages/injectable)Package.
- For Application "Logic" Layer, I have Used [flutter_bloc](https://pub.dev/packages/flutter_bloc) Package.
  - For Tracking the states, I have Used [bloc](https://pub.dev/packages/bloc) Package.
-  For data-classes or pattern matching, I Have Used [freezed](https://pub.dev/packages/freezed) Package.
-  For Applying Functional Programming, I Have Used [dartz](https://pub.dev/packages/dartz) Package.
- For Responsive UI, I have used Package [sizer](https://pub.dev/packages/sizer) Package.
- For Sharing The Application, I have used Package [share](https://pub.dev/packages/share) Package.
- For Google Play Inside The Application, I have used [url_launcher](https://pub.dev/packages/url_launcher) Package.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Custom Fonts
I have followed the instructions of flutter documentation [custom fonts](https://docs.flutter.dev/cookbook/design/fonts).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## Sample Of UI
![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_2022-03-01-11-40-54.png?alt=media&token=23d0764e-cfdf-4808-aba5-ed7b2681ef9d)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_2022-03-01-11-42-21.png?alt=media&token=dca2d3b1-36a0-45f8-880e-86f3894e2819)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_2022-03-01-11-42-27.png?alt=media&token=ac6a1dcc-9fa1-4e71-84f0-e8cb7d16bab9)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_%D9%A2%D9%A0%D9%A2%D9%A2-%D9%A0%D9%A3-%D9%A0%D9%A1-%D9%A1%D9%A1-%D9%A4%D9%A5-%D9%A3%D9%A0.png?alt=media&token=e7962e78-2b46-4b56-8e0c-55063a293e47)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_%D9%A2%D9%A0%D9%A2%D9%A2-%D9%A0%D9%A3-%D9%A0%D9%A1-%D9%A1%D9%A1-%D9%A4%D9%A6-%D9%A5%D9%A4.png?alt=media&token=8de294b8-98ca-4e79-90e5-26726c155828)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2FScreenshot_%D9%A2%D9%A0%D9%A2%D9%A2-%D9%A0%D9%A3-%D9%A0%D9%A1-%D9%A1%D9%A1-%D9%A4%D9%A7-%D9%A0%D9%A0.png?alt=media&token=3543d41b-cbf8-4a72-b588-1a002c2845ae)

![UI Image](https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/githup_documentation%2Frate.png?alt=media&token=dbfe8b63-0f07-4490-a643-cb27fbf66128)

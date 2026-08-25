# Flutter Food Delivery App

A Flutter food delivery application with Firebase authentication, restaurant menus, cart management, checkout, order storage, delivery progress, and light/dark themes.

## Features

- Email and password registration and login with Firebase Authentication
- Authentication gate for signed-in users
- Restaurant menu grouped by food category
- Food details and quantity selection
- Shopping cart with receipt summary
- Credit card checkout form
- Order storage in Cloud Firestore
- Delivery progress screen after checkout
- Light and dark theme support

## Tech Stack

- Flutter and Dart
- Firebase Core, Authentication, and Cloud Firestore
- Provider for application state management
- `flutter_credit_card` for the checkout form
- `intl` and `collection` utilities

## Requirements

- Flutter 3.47.1 or a compatible recent Flutter SDK
- Dart SDK 3.12.2 or newer within the project constraint
- Android Studio with an Android SDK installed
- A Firebase project configured for the platforms you want to run

Check your local setup with:

```bash
flutter doctor
```

## Firebase Setup

Firebase is initialized in `lib/main.dart`, so Firebase configuration is required before running the app.

1. Create or select a project in the [Firebase Console](https://console.firebase.google.com/).
2. Enable **Email/Password** under Firebase Authentication.
3. Create a Cloud Firestore database.
4. Install and run FlutterFire configuration:

   ```bash
   dart pub global activate flutterfire_cli
   flutterfire configure
   ```

5. Confirm that `lib/firebase_options.dart` contains the generated platform settings.
6. For Android, confirm that the matching `google-services.json` is present in `android/app/`.

Completed order receipts are written to the Firestore collection named `orders`.

## Installation and Running

```bash
git clone https://github.com/FAHIMSHAKIL102/flutter_food_delivery_app.git
cd flutter_food_delivery_app
flutter pub get
flutter devices
flutter run
```

To run on a specific device:

```bash
flutter run -d <device-id>
```

Build a debug Android APK:

```bash
flutter build apk --debug
```

## Project Structure

```text
lib/
  components/       Reusable UI components
  models/            Food, restaurant, and cart models
  pages/             Login, home, food, cart, payment, and delivery screens
  services/
    auth/            Firebase authentication and auth gate
    database/        Firestore order persistence
  themes/            Theme data and theme provider
  firebase_options.dart
  main.dart
assets/images/      Food and application images
```

## Development Notes

- The menu is currently provided by the `Restaurant` model and managed with Provider.
- Checkout uses `flutter_credit_card` for validation and display. It is a demo flow and does not process a real card payment.
- Do not commit private Firebase credentials or production API keys.

## Useful Commands

```bash
flutter analyze
flutter test
flutter pub outdated
flutter clean
```

## License

This project is not currently published under a specific open-source license.

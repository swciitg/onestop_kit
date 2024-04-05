# OneStopKit

OneStopKit is a Flutter package developed by SWC IITG to provide a set of common files, including
colors, styles, enums, models, and more, for the "OneStop IITG" app. This package aims to enhance
code reusability and maintainability across different parts of the application.

## Features

OneStopKit includes the following features:

- **Colors**: A predefined set of colors consistent with the "OneStop IITG" app's design theme.
- **Styles**: Common text styles, button styles, and other UI element styles to ensure a consistent
  look and feel throughout the app.
- **Enums**: Enumerations for various types used within the application, facilitating type safety
  and clarity in code.
- **Models**: Data models representing different entities used within the app, such as user
  profiles, events, notifications, etc.
- **Utility Functions**: Helper functions and utilities that can be reused across different parts of
  the application, improving development efficiency.

## Installation

You can install OneStopKit by adding it as a dependency in your `pubspec.yaml` file:

```yaml
onestop_kit:
  git:
    url: https://github.com/swciitg/onestop_kit.git
```

Then, run `flutter pub get` in your terminal to fetch the package.

## Usage

Once installed, you can import OneStopKit in your Dart code files and access its features:

```dart
import 'package:onestop_kit/onestop_kit.dart';
```

Example usage of accessing colors:

```dart
class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: OneStopColors.primaryColor,
        child: Text(
          'Welcome to OneStop IITG!',
          color: OneStopColors.kWhite,
        )
    );
  }
}

```

## License

OneStopKit is licensed under the [MIT License](LICENSE).

---

© SWC IITG | OneStopKit
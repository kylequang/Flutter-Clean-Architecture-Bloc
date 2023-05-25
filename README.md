
# Flutter Boilerplate Clean Architecture Bloc

This project showcases the implementation of Clean Architecture and Bloc presentation in a Flutter application.

    - Flutter v3.7.10
    - Clean Architecture
    - Presentation use Bloc


## Architecture components

**Software architectural pattern:** [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)   

**State management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc)

**REST API:** [Dio](https://pub.dev/packages/auto_route_generator)

**Dependency injection:** [get_it](https://pub.dev/packages/get_it), [injectable](https://pub.dev/packages/injectable), [injectable_generator](https://pub.dev/packages/injectable_generator)

**Navigation:** [auto_route](https://pub.dev/packages/auto_route), [auto_route_generator](https://pub.dev/packages/auto_route_generator) 


**Data class, json:** [freezed](https://pub.dev/packages/freezed), [freezed_annotation](https://pub.dev/packages/freezed_annotation), [json_annotation](https://pub.dev/packages/json_annotation), [json_serializable](https://pub.dev/packages/json_serializable)

**Local Database:** [Isar](https://pub.dev/packages/isar), [hive](https://pub.dev/packages/hive), [hive_flutter](https://pub.dev/packages/hive_flutter)


**Assets generator:** [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner)





## Run Project

Clone the project

```bash
  git clone https://github.com/kylequang/Flutter-Clean-Architecture-Bloc
```

Go to the project directory

```bash
  cd my-project
```

Set up to run

```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```


After that [Login/SignUp TMDB](https://github.com/kylequang)

```bash
1.Create API key
2.Copy and go to project
3.Create a .env file in the root of your project 
4.api_key = "your_api_key"

```

Run with Flavor (dev | stag | prod):

```bash
flutter run --flavor dev -t lib/main_dev.dart
flutter run --flavor prod -t lib/main_prod.dart
flutter run --flavor stag -t lib/main_stag.dart

```


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`API_KEY`

`ANOTHER_API_KEY`


## Feedback

If you have any feedback, please reach out to us at quangkytk1@gmail.com or [FB Lê Quang Kỳ](https://www.facebook.com/klq2308/)


## Support

For support, email quangkytk1@gmail.com.

## Documentation
[Clean Architecture](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/) 


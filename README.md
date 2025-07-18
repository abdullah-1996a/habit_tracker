# Habit Tracker App

A Flutter application to track habits with offline storage, calendar view, and statistics.

## Features
- Add, edit, delete habits
- Custom recurrence patterns: daily, weekly, every X days
- Calendar view to mark habit completion
- Statistics: overall completion rate, last 7-day and 30-day completions
- Fully offline with Isar local database, we can discus why I chosed Isar DB.

## Architecture
Follows Clean Architecture with three layers:
- **Domain:** Entities (`Habit`, `Completion`), Repositories, Use Cases
- **Data:** Isar models, Data Sources, Repository implementations
- **Presentation:** BLoC (with Freezed), UI screens, Dependency Injection (GetIt)

## Installation
1. Clone the repo
2. Install dependencies: `flutter pub get`
3. Generate code: `dart run build_runner build --delete-conflicting-outputs`
4. Run the app: `flutter run`

## Usage
- **Add Habit**: Tap the ‘+’ button, enter details
- **Mark Completion**: Tap dates on the calendar screen or use the check icon
- **View Stats**: Tap the chart icon in the habit list


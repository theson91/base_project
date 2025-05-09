# 🧱 Base Flutter Project (Clean Architecture + Cubit)

This is a modular, scalable Flutter base project structure using **Cubit**, **Clean Architecture**, and essential production tools like **Firebase**, **Dio**, **go_router**, and **Lato fonts**.

---

## 🗂️ Project Structure

```
lib/
├── core/                     # App-wide configuration, constants, themes, utils
│   ├── constants/
│   ├── theme/
│   └── utils/
│
├── data/                     # Shared models and services across features
│   ├── models/
│   ├── repositories/
│   └── services/
│
├── features/                 # Feature-first architecture
│   └── auth/                 # Example feature: Authentication
│       ├── domain/           # Business logic layer
│       │   ├── auth_repository.dart         # Interface + implementation
│       │   ├── sign_in_usecase.dart
│       │   ├── sign_up_usecase.dart
│       │   └── user_credentials.dart
│       ├── cubit/            # Cubit + State
│       │   ├── auth_cubit.dart
│       │   └── auth_state.dart
│       └── presentation/     # UI layer (pages + widgets)
│           ├── auth_page.dart
│           └── widgets/
│
├── routes/                   # go_router setup and route config
│
├── widgets/                  # Shared/reusable widgets (e.g., buttons, loaders)
│
└── main.dart                 # App entry point
```

---

## 🧠 Tech Stack

- **State Management:** flutter_bloc + Cubit
- **Architecture:** Clean Architecture (lightweight)
- **Networking:** Dio
- **Firebase:** Core + Auth
- **Routing:** go_router
- **Local Storage (optional):** Hive, Shared Preferences
- **Fonts:** Lato (custom fonts added)
- **Permissions:** permission_handler
- **WebView Support:** flutter_inappwebview

---

## 🚀 Getting Started

1. Run `flutter pub get`
2. Add your Firebase configuration files (iOS + Android)
3. Run the app:
   ```bash
   flutter run
   ```

---

## 👏 Contribution

This project is structured for scalability and clarity. Contributions welcome if you're improving performance, structure, or extending features!


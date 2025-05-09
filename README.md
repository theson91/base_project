# 🧱 Base Flutter Project (Clean Architecture + Cubit)

This is my personal Flutter base project — something I built to speed up development, stay organized, and avoid repeating setup for every new app.  

It follows a **feature-first structure** with a clean architecture approach, powered by **Cubit**, **Firebase Auth**, **Dio**, and **go_router**. I’ve also integrated things like custom fonts (Lato), permission handling, and a few other essentials I almost always use.

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
│       ├── domain/
│       │   ├── auth_repository.dart
│       │   ├── sign_in_usecase.dart
│       │   ├── sign_up_usecase.dart
│       │   └── user_credentials.dart
│       ├── cubit/
│       │   ├── auth_cubit.dart
│       │   └── auth_state.dart
│       └── presentation/
│           ├── auth_page.dart
│           └── widgets/
│
├── routes/                   # go_router setup and route config
├── widgets/                  # Shared/reusable widgets (e.g., buttons, loaders)
└── main.dart                 # App entry point

assets/
├── fonts/                    # Custom fonts like Lato
│   ├── Lato-Regular.ttf
│   ├── Lato-Bold.ttf
│   └── ...
├── images/                   # Static image assets (e.g. icons, logos)
│   └── ic_back.png
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

## 🎨 Asset Management

- All assets are stored in the `assets/` folder.
- Fonts (e.g. Lato family) are stored in `assets/fonts/`
- Static images like icons or logos go into `assets/images/`
- Assets are registered in `pubspec.yaml` for automatic bundling.

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


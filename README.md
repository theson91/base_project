# 🧱 Base Flutter Project (Clean Architecture + Cubit)

This is my personal Flutter base project — something I built to speed up development, stay organized, and avoid repeating setup for every new app.  

It follows a **feature-first structure** with a clean architecture approach, powered by **Cubit**, **Firebase Auth**, **Dio**, and **go_router**. I’ve also integrated things like custom fonts (Lato), permission handling, and a few other essentials I almost always use.

---

## 🗂️ Project Structure

```
lib/
├── core/                # Global configurations and utilities
│   ├── constants/       # Static values like API keys, config, globals
│   ├── native/          # MethodChannel wrapper for native communication
│   ├── theme/           # App-wide colors and text styles
│   └── utils/           # Logger, status bar helpers, etc.

├── data/                # Source of truth for models, repositories, services
│   ├── core/            # Shared API response wrappers
│   ├── models/          # JSON-serializable data classes
│   ├── repositories/    # Business logic/data-fetching logic
│   └── services/        # Raw network or local service logic (e.g., API, DB)

├── features/            # Feature-first domain (e.g., auth)
│   └── auth/            
│       ├── cubit/       # Bloc/Cubit logic and state
│       ├── domain/      # Use cases and repository interface
│       └── presentation/# Screens and UI widgets

├── routes/              # App routing configuration (e.g., go_router)

├── widgets/             # Shared/reusable UI components
│   └── buttons/         
│       ├── fill_color_button.dart
│       └── bordered_button.dart

└── main.dart   

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


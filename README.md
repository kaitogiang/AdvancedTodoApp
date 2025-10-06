# 🪶 Flutter Monorepo – Managed by Melos

This project is a **Flutter monorepo** managed by [Melos](https://melos.invertase.dev/).  
It contains multiple packages and apps that share common utilities and follow **Clean Architecture** principles.

## 🚀 Getting Started

### 1️⃣ Prerequisites

Make sure you have the following installed:

- **Flutter SDK** (≥ 3.0.0)
- **Dart SDK** (included with Flutter)
- **Melos** (for monorepo management)

To install Melos globally:
```bash
dart pub global activate melos
On Windows, ensure the Dart pub cache bin folder is added to your PATH:
Example: D:\FlutterPubCache\bin
```
### 2️⃣ Bootstrap All Packages
Run this to install dependencies for all apps & packages:
```bash
melos get_all
```
This automatically runs flutter pub get for every package in the workspace and links local dependencies.

### 3️⃣ Run the App
To start the main Flutter app:
```bash
melos exec --scope="main_app" -- flutter run
```

### 🧰 Useful Commands
Clean all packages
```bash
melos clean_all
```
Build runner all

```bash
melos build_all
```
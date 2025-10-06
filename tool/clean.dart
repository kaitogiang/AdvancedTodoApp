import 'dart:io';

void main() {
  final dirsToDelete = [
    '.dart_tool',
    'build',
    '.idea',
    '.packages',
    '.flutter-plugins',
    '.flutter-plugins-dependencies',
    'pubspec.lock',
  ];

  for (final dir in dirsToDelete) {
    final entity = Directory(dir);
    final file = File(dir);
    if (entity.existsSync()) {
      entity.deleteSync(recursive: true);
      print('🧹 Deleted directory: $dir');
    } else if (file.existsSync()) {
      file.deleteSync();
      print('🧹 Deleted file: $dir');
    }
  }
}

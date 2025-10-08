import 'dart:async';
import 'dart:io';

void main() {
  final root = Directory('packages');

  if (!root.existsSync()) {
    print('Directory ${root.path} not found!');
    exit(1);
  }

  // Lấy tất cả package con (có pubspec.yaml)
  final packages = root
      .listSync()
      .whereType<Directory>()
      .where((dir) => File('${dir.path}/pubspec.yaml').existsSync())
      .toList();

  print('Watching assets in ${packages.length} packages...');

  for (var package in packages) {
    watchAssets(package.path);
  }
}

// Debounce để không chạy build quá nhiều lần liên tiếp
Timer? _debounce;
const debounceDuration = Duration(seconds: 1);

void watchAssets(String packagePath) {
  final assetsDir = Directory('$packagePath/assets');

  if (!assetsDir.existsSync()) {
    return;
  }

  print('Watching assets folder: $assetsDir');

  assetsDir.watch(recursive: true).listen((event) {
    print('[${DateTime.now()}] Change detected in ${event.path}');

    // Debounce: chỉ chạy build 1 lần sau 1 giây kể từ lần thay đổi cuối cùng
    _debounce?.cancel();
    _debounce = Timer(debounceDuration, () {
      runMelosBuildAll();
    });
  });
}

void runMelosBuildAll() {
  print('Running "melos build_all"...');
  Process.start('dart', ['pub', 'global', 'run', 'melos', 'build_all']).then((
    process,
  ) {
    process.stdout.transform(SystemEncoding().decoder).listen((data) {
      print(data);
    });
    process.stderr.transform(SystemEncoding().decoder).listen((data) {
      print(data);
    });
  });
}

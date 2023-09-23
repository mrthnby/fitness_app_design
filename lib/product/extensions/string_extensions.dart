extension Imagestring on String {
  String get imagePath => 'assets/images/$this';
  String get imageMood => split('_')[0];
}

extension StringExtension on String {
  String get capitalize =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

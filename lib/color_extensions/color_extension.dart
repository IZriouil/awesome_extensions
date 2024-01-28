part of '../awesome_extensions.dart';

/// Extension on the [Color] class to provide additional functionality.
extension ColorExtension on Color {
  /// Darkens the color by a specified percentage.
  ///
  /// The [percent] parameter specifies the percentage by which the color should be darkened.
  /// The value of [percent] should be between 0 and 100.
  ///
  /// Returns a new [Color] object that represents the darkened color.
  Color darken([int percent = 10]) {
    assert(0 <= percent && percent <= 100);
    final f = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * f).round(),
      (green * f).round(),
      (blue * f).round(),
    );
  }

  /// Lightens the color by a specified percentage.
  ///
  /// The [percent] parameter specifies the percentage by which the color should be lightened.
  /// The value of [percent] should be between 0 and 100.
  ///
  /// Returns a new [Color] object that represents the lightened color.
  Color lighten([int percent = 10]) {
    assert(0 <= percent && percent <= 100);
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }

  Color get invertColor => Color.fromARGB(
        alpha,
        255 - red,
        255 - green,
        255 - blue,
      );

  // facilitate opacity method
  /// Returns a new [Color] with an opacity of 12%.
  Color get opacity12 => withOpacity(.12);

  /// Returns a new [Color] with an opacity of 25%.
  Color get opacity25 => withOpacity(.25);

  /// Returns a new [Color] with an opacity of 50%.
  Color get opacity50 => withOpacity(.50);

  /// Returns a new [Color] with an opacity of 75%.
  Color get opacity75 => withOpacity(.75);

  /// Returns a new [Color] with an opacity of 87%.
  Color get opacity87 => withOpacity(.87);
}

const _imagePath = 'assets/images';

class AssetPath {
  AssetPath._(); // Không cho phép khởi tạo lớp này

  // Image
  static const String defaultAvatar = '$_imagePath/default_avatar.png';
  static const String backgroundImage = '$_imagePath/background.jpg';

  // Khuyến mãi
  static const String promotionBanner = '$_imagePath/khuyen-mai.jpg';
  static const String promotionBanner1 = '$_imagePath/khuyen-mai1.jpg';
  static const String promotionBanner2 = '$_imagePath/khuyen-mai2.png';
}

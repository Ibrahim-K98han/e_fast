import 'package:e_fast/presentation/utils/app_image.dart';

class OnBoardingData {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingData({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [image, title, subTitle];
}

final List<OnBoardingData> data = [
  const OnBoardingData(
    image: AppImage.appLogo,
    title: 'Same Day Delivery Service within City',
    subTitle:
        'Get your parcels delivered across Dhaka City within just 24 hours-swift and reliable service',
  ),
  const OnBoardingData(
    image: AppImage.appLogo,
   title: 'Same Day Delivery Service within City',
    subTitle:
        'Get your parcels delivered across Dhaka City within just 24 hours-swift and reliable service',
  ),
  const OnBoardingData(
    image: AppImage.appLogo,
    title: 'Same Day Delivery Service within City',
    subTitle:
        'Get your parcels delivered across Dhaka City within just 24 hours-swift and reliable service',
  ),
 
];

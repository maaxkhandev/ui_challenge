import 'package:coffe_shop_app/config/app_images.dart';
import 'package:coffe_shop_app/models/coffe_model.dart';

class AppData {
  static List<CoffeModel> coffeList = [
    CoffeModel(
        id: '1',
        thumbnail: AppImages.pngImage.coffe1,
        name: 'Cappuccino',
        description: 'with Chocolate',
        price: 4.53),
    CoffeModel(
        id: '2',
        thumbnail: AppImages.pngImage.coffe2,
        name: 'Cappuccino',
        description: 'with Oat Milk',
        price: 4),
    CoffeModel(
        id: '3',
        thumbnail: AppImages.pngImage.coffe3,
        name: 'Cappuccino',
        description: 'with Chocolate',
        price: 3.90),
    CoffeModel(
        id: '4',
        thumbnail: AppImages.pngImage.coffe4,
        name: 'Cappuccino',
        description: 'with Chocolate',
        price: 5.53),
  ];
}

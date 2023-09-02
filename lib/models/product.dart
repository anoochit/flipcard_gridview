class Product {
  String title;
  String image;
  double price;
  double? save;
  Product({
    required this.title,
    required this.image,
    required this.price,
    this.save,
  });
}

List<Product> listProduct = [
  Product(
    title: 'Sausage Mc Muffin set',
    image:
        'https://d1vs91ctevllei.cloudfront.net/images/product/1693528427TPO-1000x1000-sausage-set.png',
    price: 139.00,
    save: 150.00,
  ),
  Product(
    title: 'Sausage McMuffin',
    image:
        'https://d1vs91ctevllei.cloudfront.net/images/product/15991868771593420983050_MCD_Menu-Icon_600x400px_Breakfast-Alacarte_Sausage-McMuffin_Final.jpg',
    price: 139.00,
  ),
  Product(
    title: 'Sausage McMuffin with Egg',
    image:
        'https://d1vs91ctevllei.cloudfront.net/images/product/1593420962051_MCD_Menu-Icon_600x400px_Breakfast-Alacarte_Sausage-McMuffin-EGG_Final.jpg',
    price: 149.00,
  ),
  Product(
    title: 'Hot Americano 8 oz.',
    image:
        'https://d1vs91ctevllei.cloudfront.net/images/product/16487576381629277313HOT-LONG-BLACK_Final.png',
    price: 65.00,
  ),
  Product(
    title: 'French Fries',
    image:
        'https://d1vs91ctevllei.cloudfront.net/images/product/1593426636ff.jpg',
    price: 85.00,
  ),
];

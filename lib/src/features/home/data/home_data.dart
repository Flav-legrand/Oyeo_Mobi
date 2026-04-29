import '../domain/product.dart';

class HomeData {
  static const categories = [
    'Électronique',
    'Mode',
    'Maison',
    'Beauté',
    'Livres',
    'Sports',
  ];

  static final featuredProducts = <Product>[
    Product(
      name: 'Casque sans fil',
      category: 'Électronique',
      price: '45 990 F CFA',
      badge: 'Meilleur Prix',
    ),
    Product(
      name: 'Montre connectée',
      category: 'Mode',
      price: '29 500 F CFA',
      badge: 'Top vente',
    ),
    Product(
      name: 'Enceinte Bluetooth',
      category: 'Électronique',
      price: '18 200 F CFA',
      badge: 'Offre',
    ),
  ];

  static final recommendedProducts = <Product>[
    Product(
      name: 'Tapis de yoga',
      category: 'Sports',
      price: '9 800 F CFA',
      badge: 'Nouveau',
    ),
    Product(
      name: 'Lampe bureau LED',
      category: 'Maison',
      price: '7 450 F CFA',
      badge: 'Éco',
    ),
    Product(
      name: 'Rouge à lèvres',
      category: 'Beauté',
      price: '3 200 F CFA',
      badge: 'Choix client',
    ),
    Product(
      name: 'Roman best-seller',
      category: 'Livres',
      price: '4 900 F CFA',
      badge: 'Promo',
    ),
  ];
}

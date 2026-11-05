// Даалгавар 2 — Product модель. Энэ классыг ShopLite апп-д 4-р долоо
// хоногт dummyjson.com API-гаас ирсэн JSON-ийг хөрвүүлэхэд дахин ашиглана.

/// Үнийг `$12.50` хэлбэрээр форматлана.
extension PriceFormat on double {
  // TODO 2.6: 2 оронтой бутархайтай, урдаа $ тэмдэгтэй текст буцаа.
  String get asPrice => throw UnimplementedError('TODO 2.6');
}

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final String thumbnail;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    this.description = '',
    this.discountPercentage = 0,
    this.rating = 0,
    this.stock = 0,
    this.category = '',
    this.thumbnail = '',
  });

  /// 2.1 JSON Map-аас Product үүсгэнэ.
  ///
  /// - id, title, price заавал байна.
  /// - Тоон утга JSON-д int (25) эсвэл double (25.5) байж болно →
  ///   `(json['price'] as num).toDouble()`.
  /// - Бусад талбар байхгүй (null) бол constructor-ийн анхдагч утгыг ав.
  factory Product.fromJson(Map<String, dynamic> json) {
    // TODO 2.1
    throw UnimplementedError('TODO 2.1');
  }

  /// 2.2 Product-ийг JSON Map болгоно (fromJson-ийн эсрэг үйлдэл).
  Map<String, dynamic> toJson() {
    // TODO 2.2
    throw UnimplementedError('TODO 2.2');
  }

  /// 2.3 Хөнгөлөлт хассан үнэ, 2 оронтой бутархай хүртэл тоймлосон.
  /// Жишээ: price 100, discountPercentage 12.5 → 87.5
  double get discountedPrice {
    // TODO 2.3: (x * 100).round() / 100 гэж тоймлож болно.
    throw UnimplementedError('TODO 2.3');
  }

  /// 2.4 Нөөцөд байгаа эсэх.
  bool get inStock {
    // TODO 2.4
    throw UnimplementedError('TODO 2.4');
  }

  /// 2.5 Зарим талбарыг өөрчилсөн ШИНЭ хуулбар буцаана (immutable загвар).
  Product copyWith({double? price, int? stock}) {
    // TODO 2.5
    throw UnimplementedError('TODO 2.5');
  }

  // Хоёр Product-ийн id ижил бол тэнцүү гэж үзнэ.
  @override
  bool operator ==(Object other) => other is Product && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Product(#$id $title, \$$price)';
}

// Даалгавар 3 — Сагс. 3-р долоо хоногт энэ логикийг Provider-тай холбоно.

import 'product.dart';

/// Нөөцөөс их тоогоор сагслах үед шидэгдэх алдаа.
class OutOfStockException implements Exception {
  final Product product;
  final int requested;

  OutOfStockException(this.product, this.requested);

  @override
  String toString() =>
      '${product.title}: $requested ширхэг хүссэн, нөөцөд ${product.stock} байна';
}

class CartItem {
  final Product product;
  final int quantity;

  const CartItem(this.product, this.quantity);

  /// 3.1 Мөрийн дүн = хөнгөлөлттэй үнэ × тоо ширхэг.
  double get subtotal {
    // TODO 3.1
    throw UnimplementedError('TODO 3.1');
  }
}

class Cart {
  // productId → CartItem. Нэг бараа сагсанд нэг л мөр байна.
  final Map<int, CartItem> _items = {};

  /// Гаднаас өөрчлөх боломжгүй жагсаалт.
  List<CartItem> get items => List.unmodifiable(_items.values);

  bool get isEmpty => _items.isEmpty;

  /// 3.2 Сагсанд байгаа нийт ширхэг.
  int get totalQuantity {
    // TODO 3.2: fold ашигла.
    throw UnimplementedError('TODO 3.2');
  }

  /// 3.3 Нийт дүн, 2 оронтой бутархай хүртэл тоймлосон.
  double get totalPrice {
    // TODO 3.3
    throw UnimplementedError('TODO 3.3');
  }

  /// 3.4 Бараа нэмэх.
  /// - [quantity] <= 0 бол [ArgumentError].
  /// - Бараа сагсанд аль хэдийн байвал тоог нэмнэ.
  /// - Нийт тоо нөөцөөс (product.stock) хэтэрвэл [OutOfStockException]
  ///   шидэж, сагсыг өөрчлөхгүй.
  void add(Product product, {int quantity = 1}) {
    // TODO 3.4
    throw UnimplementedError('TODO 3.4');
  }

  /// 3.5 Тоог 1-ээр хасна; 0 болвол мөрийг устгана.
  /// Сагсанд байхгүй бараа бол юу ч хийхгүй.
  void decrease(int productId) {
    // TODO 3.5
    throw UnimplementedError('TODO 3.5');
  }

  void remove(int productId) => _items.remove(productId);

  void clear() => _items.clear();
}

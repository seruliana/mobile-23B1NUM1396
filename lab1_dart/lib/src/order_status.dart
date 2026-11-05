// Даалгавар 4 — Enhanced enum ба switch expression.

enum OrderStatus {
  pending('Хүлээгдэж буй'),
  paid('Төлөгдсөн'),
  shipped('Хүргэлтэд гарсан'),
  delivered('Хүргэгдсэн'),
  cancelled('Цуцлагдсан');

  const OrderStatus(this.label);

  /// Хэрэглэгчид харуулах монгол нэр.
  final String label;

  /// 4.1 Дараагийн төлөв: pending → paid → shipped → delivered.
  /// delivered, cancelled бол null (дараагийн төлөв байхгүй).
  /// switch expression ашигла — default/_ бүү хэрэглэ.
  OrderStatus? get next {
    // TODO 4.1
    throw UnimplementedError('TODO 4.1');
  }

  /// 4.2 Зөвхөн pending, paid үед цуцалж болно.
  bool get canCancel {
    // TODO 4.2
    throw UnimplementedError('TODO 4.2');
  }
}

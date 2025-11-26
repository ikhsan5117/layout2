import 'package:aplikasi/model/cart.dart';
import 'package:test/test.dart';

void main() {
  test('Cart model serialization', () {
    final date = DateTime.parse('2020-03-02T00:00:02.000Z');

    final item = CartItem(productId: 1, quantity: 5);
    final cart = Cart(id: 10, userId: 2, date: date, products: [item]);

    final m = cart.toMap();
    expect(m['id'], 10);
    expect(m['userId'], 2);
    expect(m['products'], isA<List>());
    expect((m['products'] as List).first['productId'], 1);

    final back = Cart.fromMap(m);
    expect(back.id, cart.id);
    expect(back.userId, cart.userId);
    expect(back.date.toUtc(), date.toUtc());
    expect(back.products.first.productId, item.productId);
    expect(back.products.first.quantity, item.quantity);
  });
}

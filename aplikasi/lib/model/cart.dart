import 'dart:convert';

class CartItem {
	final int productId;
	final int quantity;

	CartItem({required this.productId, required this.quantity});

	Map<String, dynamic> toMap() {
		return {
			'productId': productId,
			'quantity': quantity,
		};
	}

	factory CartItem.fromMap(Map<String, dynamic> map) {
		return CartItem(
			productId: map['productId']?.toInt() ?? 0,
			quantity: map['quantity']?.toInt() ?? 0,
		);
	}

	String toJson() => json.encode(toMap());

	factory CartItem.fromJson(String source) => CartItem.fromMap(json.decode(source));

	@override
	String toString() => 'CartItem(productId: $productId, quantity: $quantity)';
}

class Cart {
	final int id;
	final int userId;
	final DateTime date;
	final List<CartItem> products;

	Cart({
		required this.id,
		required this.userId,
		required this.date,
		required this.products,
	});

	Cart copyWith({
		int? id,
		int? userId,
		DateTime? date,
		List<CartItem>? products,
	}) {
		return Cart(
			id: id ?? this.id,
			userId: userId ?? this.userId,
			date: date ?? this.date,
			products: products ?? this.products,
		);
	}

	Map<String, dynamic> toMap() {
		return {
			'id': id,
			'userId': userId,
			'date': date.toIso8601String(),
			'products': products.map((p) => p.toMap()).toList(),
		};
	}

	factory Cart.fromMap(Map<String, dynamic> map) {
		return Cart(
			id: map['id']?.toInt() ?? 0,
			userId: map['userId']?.toInt() ?? 0,
			date: DateTime.parse(map['date']),
			products: List<CartItem>.from(
				(map['products'] as List<dynamic>).map((x) => CartItem.fromMap(x)),
			),
		);
	}

	String toJson() => json.encode(toMap());

	factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

	@override
	String toString() => 'Cart(id: $id, userId: $userId, date: $date, products: $products)';
}


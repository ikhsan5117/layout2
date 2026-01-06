import 'dart:async';
import 'dart:convert';

import 'package:aplikasi/model/cart.dart';
import 'package:http/http.dart' as http;

class CartHelper {
	final Map<String, String> _header = {
		"Content-Type": "application/json",
	};

	// Get all carts
	Future<List<Cart>> getAllCarts() async {
		var url = Uri.parse('https://fakestoreapi.com/carts');
		try {
			var res = await http.get(url);
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body) as List<dynamic>;
				return jsonData.map((item) => Cart.fromMap(item)).toList();
			} else {
				throw Exception('Gagal mendapatkan carts, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Get cart by id
	Future<Cart> getCartById(int id) async {
		var url = Uri.parse('https://fakestoreapi.com/carts/$id');
		try {
			var res = await http.get(url);
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body);
				return Cart.fromMap(jsonData);
			} else {
				throw Exception('Gagal mendapatkan cart, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Create a new cart. Returns created cart id when successful.
	Future<int> createCart(Cart c) async {
		var url = Uri.parse('https://fakestoreapi.com/carts');
		// prepare body according to API: userId, date (ISO string) and products list
		var body = {
			'userId': c.userId,
			'date': c.date.toIso8601String(),
			'products': c.products.map((p) => p.toMap()).toList(),
		};

		try {
			var res = await http.post(url, headers: _header, body: json.encode(body));
			if (res.statusCode == 200 || res.statusCode == 201) {
				var jsonData = json.decode(res.body);
				return jsonData['id'];
			} else {
				throw Exception('Gagal membuat cart, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Update existing cart by id. Returns updated Cart.
	Future<Cart> updateCart(Cart c) async {
		var url = Uri.parse('https://fakestoreapi.com/carts/${c.id}');
		var body = {
			'userId': c.userId,
			'date': c.date.toIso8601String(),
			'products': c.products.map((p) => p.toMap()).toList(),
		};

		try {
			var res = await http.put(url, headers: _header, body: json.encode(body));
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body);
				return Cart.fromMap(jsonData);
			} else {
				throw Exception('Gagal melakukan update cart, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Delete cart by id
	Future<bool> deleteCart(int id) async {
		var url = Uri.parse('https://fakestoreapi.com/carts/$id');
		try {
			var res = await http.delete(url);
			return res.statusCode == 200 || res.statusCode == 204;
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Get user's carts
	Future<List<Cart>> getUserCarts(int userId) async {
		var url = Uri.parse('https://fakestoreapi.com/carts/user/$userId');
		try {
			var res = await http.get(url);
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body) as List<dynamic>;
				return jsonData.map((item) => Cart.fromMap(item)).toList();
			} else {
				throw Exception('Gagal mendapatkan carts user, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Get carts in date range
	Future<List<Cart>> getCartsInDateRange(DateTime startDate, DateTime endDate) async {
		var url = Uri.parse('https://fakestoreapi.com/carts')
			.replace(queryParameters: {
				'startdate': startDate.toIso8601String(),
				'enddate': endDate.toIso8601String(),
			});
		try {
			var res = await http.get(url);
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body) as List<dynamic>;
				return jsonData.map((item) => Cart.fromMap(item)).toList();
			} else {
				throw Exception('Gagal mendapatkan carts dalam rentang tanggal, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}

	// Get carts with limit
	Future<List<Cart>> getCartsWithLimit(int limit) async {
		var url = Uri.parse('https://fakestoreapi.com/carts')
			.replace(queryParameters: {'limit': limit.toString()});
		try {
			var res = await http.get(url);
			if (res.statusCode == 200) {
				var jsonData = json.decode(res.body) as List<dynamic>;
				return jsonData.map((item) => Cart.fromMap(item)).toList();
			} else {
				throw Exception('Gagal mendapatkan carts dengan limit, kode: ${res.statusCode}');
			}
		} catch (e) {
			throw Exception('Error: $e');
		}
	}
}


import 'dart:convert';

class Produk {
  // 1. definisikan vaariabel yang dibutuhkan
  // 2. set ke final supaya tidak dapat dirubah setelah sibuat
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;

  // 3. buat konstruktor untuk mengisi variabel diatas
  Produk({
          required this.id,
          required this.title,
          required this.description,
          required this.price,
          required this.category,
          required this.image,
        });

    // buat method untuk import dari json
    // buat method dengan keyword factory
  factory Produk.dariJson(Map<String,dynamic> json){
    return Produk(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      price: json["price"].toDouble(),
      category: json["category"],
      image: json["image"],
    );
  }

  Produk copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
    String? category,
    String? image,
  }) {
    return Produk(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'image': image,
    };
  }

  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Produk.fromJson(String source) => Produk.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Produk(id: $id, title: $title, description: $description, price: $price, category: $category, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Produk &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.price == price &&
      other.category == category &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode ^
      category.hashCode ^
      image.hashCode;
  }
}

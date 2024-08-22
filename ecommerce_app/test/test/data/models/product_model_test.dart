import 'package:ecommerce_app/feautures/data/models/Product_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductModel', () {
    test('should correctly convert from JSON', () {
      final json = {
        'id': '1',
        'name': 'Product Name',
        'description': 'Product Description',
        'imageUrl': 'http://example.com/image.png',
        'price': 99.99,
      };
      final product = ProductModel.fromJson(json);
      expect(product.id, '1');
      expect(product.name, 'Product Name');
      expect(product.description, 'Product Description');
      expect(product.imageUrl, 'http://example.com/image.png');
      expect(product.price, 99.99);
    });

    test('should correctly convert to JSON', () {
      final product = ProductModel(
        id: '1',
        name: 'Product Name',
        description: 'Product Description',
        imageUrl: 'http://example.com/image.png',
        price: 99.99,
      );
      final json = product.toJson();
      expect(json['id'], '1');
      expect(json['name'], 'Product Name');
      expect(json['description'], 'Product Description');
      expect(json['imageUrl'], 'http://example.com/image.png');
      expect(json['price'], 99.99);
    });
  });
}

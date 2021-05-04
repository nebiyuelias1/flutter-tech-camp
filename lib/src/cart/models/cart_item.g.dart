// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$_$_CartItemFromJson(Map<String, dynamic> json) {
  return _$_CartItem(
    multiplier: json['multiplier'] as int,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'multiplier': instance.multiplier,
      'product': instance.product,
    };

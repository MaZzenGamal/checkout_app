import 'Items.dart';

class ItemListModel {
  ItemListModel({
      this.orders,});

  ItemListModel.fromJson(dynamic json) {
    if (json['items'] != null) {
      orders = [];
      json['items'].forEach((v) {
        orders?.add(OrderItemModel.fromJson(v));
      });
    }
  }
  List<OrderItemModel>? orders;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (orders != null) {
      map['items'] = orders?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
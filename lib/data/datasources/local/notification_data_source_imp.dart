import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:notification_ui/data/datasources/local/notification_data_source.dart';
import 'package:notification_ui/data/models/notification_model.dart';
import '../../../domain/entities/notification_entities.dart';

class NotificationDataSourceImp implements NotificationDataSource {
  @override
  Future<List<NotificationEntities>> getNotifications() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/notifications.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => NotificationModel.fromJson(json)).toList();
  }
}

// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:ayo_kesitu/infrastructure/models/models.dart';

// class NotifLocalService extends GetxService {
//   NotifLocalService();

//   final localNotification = FlutterLocalNotificationsPlugin();
//   final androidSetting = const AndroidInitializationSettings('@mipmap/ic_launcher');

//   final streamBroadcast = StreamController<ReceivedNotif>.broadcast();
//   final selectNotifStream = StreamController<String?>.broadcast();

//   @override
//   void onInit() async {
//     final initSetting = InitializationSettings(android: androidSetting);
//     await localNotification.initialize(
//       initSetting,
//       onDidReceiveNotificationResponse: receivedNotif,
//       onDidReceiveBackgroundNotificationResponse: receivedBackNotif,
//     );
//     super.onInit();
//   }

//   // received notification
//   static receivedBackNotif(NotificationResponse response) {}
//   receivedNotif(NotificationResponse response) {
//     switch (response.notificationResponseType) {
//       default:
//         selectNotifStream.add(response.payload);
//         break;
//     }
//   }

//   // details notification
//   Future<NotificationDetails> notifDetails(NotifDetailReq notifDetail) async {
//     final notifDetails = await localNotification.getNotificationAppLaunchDetails();
//     if (notifDetails != null && notifDetails.didNotificationLaunchApp) {
//       selectNotifStream.add(notifDetails.notificationResponse!.payload);
//     }

//     return NotificationDetails(
//       android: notifDetail.android,
//     );
//   }

//   // show notification
//   int id = 0;
//   Future<void> showNotification({
//     required ReceivedNotifReq received,
//     AndroidNotificationDetails? android,
//   }) async {
//     final notificationDetails = await notifDetails(NotifDetailReq(
//       android: android,
//     ));
//     await localNotification.show(
//       id++,
//       received.title,
//       received.body,
//       notificationDetails,
//       payload: received.payload,
//     );
//   }

//   // onclose
//   @override
//   void onClose() {
//     streamBroadcast.close();
//     selectNotifStream.close();
//     super.onClose();
//   }
// }

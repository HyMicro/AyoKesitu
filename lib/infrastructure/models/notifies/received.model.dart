// received notif
class ReceivedNotif {
  int id;
  final String? title;
  final String? body;
  final String? payload;

  ReceivedNotif({
    required this.id,
    this.title,
    this.body,
    this.payload,
  });
}

// received notif request
class ReceivedNotifReq {
  final String? title;
  final String? body;
  final String? payload;

  ReceivedNotifReq({
    this.title,
    this.body,
    this.payload,
  });
}

import 'package:vania/vania.dart';
import 'package:tugas_vania/app/http/controllers/auth_controller.dart';

class WebSocketRoute implements Route {
  @override
  void register() {
    Router.websocket('/ws', (WebSocketEvent event) {
      var newMessage = authController.newMessage;
      event.on('message', newMessage!);
    });
  }
}

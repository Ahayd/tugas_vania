import 'package:tugas_vania/app/models/users_model.dart';

Map<String, dynamic> authConfig = {
  'guards': {
    'default': {
      'provider': UsersModel(),
    }
  }
};

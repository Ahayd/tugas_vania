import 'package:vania/vania.dart';

class PersonalAccessTokensTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('personal_access_tokens', () {
      id();
      timeStamps();
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('personal_access_tokens');
  }
}

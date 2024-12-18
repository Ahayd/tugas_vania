import 'package:vania/vania.dart';

class CreateOrederitemsTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('orederitems', () {
      id();
      timeStamps();
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('orederitems');
  }
}

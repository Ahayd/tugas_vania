import 'package:vania/vania.dart';

class ProductnotesTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('productnotes', () {
      id();
      timeStamps();
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('productnotes');
  }
}

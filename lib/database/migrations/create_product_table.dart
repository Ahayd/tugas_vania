import 'package:vania/vania.dart';

class CreateProductTable extends Migration {

  @override
  Future<void> up() async{
   super.up();
   await createTableNotExists('product', () {
      id();
      timeStamps();
    });
  }
  
  @override
  Future<void> down() async {
    super.down();
    await dropIfExists('product');
  }
}

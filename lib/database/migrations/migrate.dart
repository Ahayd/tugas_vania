import 'dart:io';
import 'package:vania/vania.dart';
import 'create_users_table.dart';
import 'create_product_table.dart';
import 'create_orederitems_table.dart';
import 'create_costumers_table.dart';
import 'personal_access_tokens_table.dart';
import 'productnotes_table.dart';
import 'create_vendors_table.dart';

void main(List<String> args) async {
  await MigrationConnection().setup();
  if (args.isNotEmpty && args.first.toLowerCase() == "migrate:fresh") {
    await Migrate().dropTables();
  } else {
    await Migrate().registry();
  }
  await MigrationConnection().closeConnection();
  exit(0);
}

class Migrate {
  registry() async {
    await CreateUserTable().up();
    await CreateProductTable().up();
    await CreateCustomersTable();
    await CreateOrederitemsTable();
    await PersonalAccessTokensTable().up();
    await ProductnotesTable().up();
    await CreateVendorsTable().up();
  }

  dropTables() async {
    await CreateVendorsTable().down();
    await ProductnotesTable().down();
    await PersonalAccessTokensTable().down();
    await CreateProductTable().down();
    await CreateUserTable().down();
    await CreateCustomersTable().down;
    await CreateOrederitemsTable();
  }
}

import 'package:app/app/modules/principal_app/principal_app_module.dart';
import 'package:app/general/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Routes.initialRoute,
          module: PrincipalAppModule(),
        )
      ];
}

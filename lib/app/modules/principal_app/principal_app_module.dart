import 'package:app/app/modules/principal_app/presenter/pages/initial_screen.dart';
import 'package:app/app/modules/principal_app/presenter/pages/transfer_screen.dart';
import 'package:app/general/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PrincipalAppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.initialRoute,
          child: (context, args) => InitialScreen(),
        ),
        ChildRoute(
          Routes.transferRoute,
          child: (context, args) => const TransferScreen(),
        )
      ];
}

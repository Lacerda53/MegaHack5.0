import 'package:MegaHackFive/app/modules/cashback/cashback_controller.dart';
import 'package:MegaHackFive/app/modules/cashback/cashback_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CashbackModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CashbackController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/cashback', child: (_, args) => CashbackPage()),
      ];

  static Inject get to => Inject<CashbackModule>.of();
}

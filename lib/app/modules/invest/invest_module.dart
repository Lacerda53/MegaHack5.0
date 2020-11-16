import 'package:MegaHackFive/app/modules/invest/invest_controller.dart';
import 'package:MegaHackFive/app/modules/invest/invest_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InvestModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i)=> InvestController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/invest', child: (_, args) => InvestPage()),
      ];

  static Inject get to => Inject<InvestModule>.of();
}

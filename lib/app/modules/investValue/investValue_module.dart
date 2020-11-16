import 'package:MegaHackFive/app/modules/investValue/investValue_controller.dart';
import 'package:MegaHackFive/app/modules/investValue/investValue_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InvestValueModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i)=> InvestValueController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/investValue', child: (_, args) => InvestValuePage()),
      ];

  static Inject get to => Inject<InvestValueModule>.of();
}

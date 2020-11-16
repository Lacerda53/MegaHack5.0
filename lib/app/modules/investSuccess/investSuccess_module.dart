import 'package:MegaHackFive/app/modules/investSuccess/investSuccess_controller.dart';
import 'package:MegaHackFive/app/modules/investSuccess/investSuccess_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InvestSuccessModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i)=> InvestSuccessController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/investSuccess', child: (_, args) => InvestSuccessPage()),
      ];

  static Inject get to => Inject<InvestSuccessModule>.of();
}

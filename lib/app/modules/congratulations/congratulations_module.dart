import 'package:MegaHackFive/app/modules/congratulations/congratulations_controller.dart';
import 'package:MegaHackFive/app/modules/congratulations/congratulations_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CongratulationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CongratulationsController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/detailsTrail', child: (_, args) => CongratulationsPage()),
      ];

  static Inject get to => Inject<CongratulationsModule>.of();
}

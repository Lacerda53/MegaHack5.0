import 'package:MegaHackFive/app/modules/welcome/welcome_controller.dart';
import 'package:MegaHackFive/app/modules/welcome/welcome_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WelcomeModule extends ChildModule{
  @override
  List<Bind> get binds => [
        Bind((i)=> WelcomeController()),
      ];

 @override
  List<ModularRouter> get routers => [
        ModularRouter('/welcome', child: (_, args) => WelcomePage()),
      ];

  static Inject get to => Inject<WelcomeModule>.of();
}
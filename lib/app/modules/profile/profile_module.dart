import 'package:MegaHackFive/app/modules/profile/profile_controller.dart';
import 'package:MegaHackFive/app/modules/profile/profile_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/profile', child: (_, args) => ProfilePage()),
      ];

  static Inject get to => Inject<ProfileModule>.of();
}

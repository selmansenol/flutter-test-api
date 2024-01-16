import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../viewmodel/viewmodels.dart';

class SetupProviders {
  static List<SingleChildWidget> get providers => [
        ChangeNotifierProvider(create: (context) => UserViewModel()),
      ];
}

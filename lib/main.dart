import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_api/auth/auth.dart';
import 'package:flutter_api/setup_providers.dart';
import 'package:flutter_api/utilities/constants/app_constants.dart';
import 'package:flutter_api/utilities/constants/theme_colors.dart';
import 'package:provider/provider.dart';

part 'package:flutter_api/utilities/constants/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: SetupProviders.providers,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Poyraz Wifi',
          theme: _themeData,
          home: const LoginPage(),
        ));
  }
}

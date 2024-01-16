import 'package:flutter/material.dart';
import 'package:flutter_api/auth/base_page.dart';
import 'package:flutter_api/homepage.dart';
import 'package:flutter_api/utilities/extensions/flex_extensions.dart';
import 'package:flutter_api/viewmodel/user_view_model.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import '../../utilities/constants/theme_colors.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final userViewModel = Provider.of<UserViewModel>(context);
    return BasePage(
        backgroundColor: ThemeColors.offWhite,
        child: FormBuilder(
          key: _formKey,
          onChanged: () {
            _formKey.currentState!.save();
            debugPrint(_formKey.currentState!.value.toString());
          },
          autovalidateMode: AutovalidateMode.disabled,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 40, bottom: 20),
                    child: Column(
                      children: [
                        const EmailFormField(),
                        const PasswordFormField(),
                        AuthButton(
                          btnName: 'Giriş Yap',
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              userViewModel.changeLoading(true);
                              await userViewModel.getUser(
                                  username:
                                      _formKey.currentState!.value['email'],
                                  password:
                                      _formKey.currentState!.value['password']);
                              if (userViewModel.user != null) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(
                                        serviceData: userViewModel.user!,
                                      ),
                                    ));
                                print(userViewModel.user!.message);
                              } else {
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text('Giriş başarısız oldu')));
                                  userViewModel.changeLoading(false);
                                }
                              }
                              _formKey.currentState!.reset();
                            }
                          },
                        ),
                        userViewModel.isLoading
                            ? const LoadingView()
                            : const SizedBox.shrink(),
                      ],
                    ).separated(const SizedBox(height: 8.0)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

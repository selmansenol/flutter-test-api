import 'package:flutter/material.dart';
import 'package:flutter_api/utilities/constants/theme_colors.dart';

class AuthButton extends StatelessWidget {
  final String btnName;
  final void Function()? onPressed;
  const AuthButton({
    super.key,
    required this.btnName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: ThemeColors.lightBlue,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.45, 40)),
        onPressed: onPressed,
        /* () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const BaseNavPage()));
          /* if (_formKey.currentState!.validate()) {
            // Kayıt işlemleri
            print('Login işlemleri');
          } */
        }, */
        child: Text(
          btnName,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white),
        ));
  }
}

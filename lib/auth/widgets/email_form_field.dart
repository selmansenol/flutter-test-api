import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../utilities/constants/theme_colors.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      /* key: _emailFieldKey, */
      name: 'email',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: ThemeColors.grayTertiary,
          ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: 'Kullanıcı Adı',
        hintStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}

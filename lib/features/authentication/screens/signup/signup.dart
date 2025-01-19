import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentify/features/authentication/screens/signup/widgets/signup_form.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const TSignupForm(),

              /// Divider
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(
                dividerText: TTexts.orSignUpWith.capitalize!,
              ),

              /// Social Buttons
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

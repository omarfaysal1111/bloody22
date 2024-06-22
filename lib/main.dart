import 'package:bloody/features/donation/presentation/views/donation_history.dart';
import 'package:bloody/features/home/presentation/views/register_donatation.dart';
import 'package:bloody/features/home/presentation/views/settings.dart';
import 'package:bloody/features/donation/presentation/views/terms_and_conditions.dart';
import 'package:bloody/features/home/presentation/views/home.dart';
import 'package:bloody/features/register/presentation/views/create_new_password.dart';
import 'package:bloody/features/register/presentation/views/forget_password.dart';
import 'package:bloody/features/register/presentation/views/login_page.dart';
import 'package:bloody/features/register/presentation/views/update_page.dart';
import 'package:bloody/features/register/presentation/widgets/register.dart';
import 'package:bloody/features/register/presentation/views/register_page.dart';
import 'package:bloody/features/register/presentation/views/verify_methods.dart';
import 'package:bloody/features/register/presentation/views/otp_code_phone.dart';
import 'package:bloody/features/register/presentation/views/verify_by_email.dart';
import 'package:bloody/features/register/presentation/views/verify_by_phone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BloodApp());
}

class BloodApp extends StatelessWidget {
  const BloodApp({super.key});
  static String tocken = "";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        VerifyMethods.id: (context) => const VerifyMethods(),
        VerifyByPhone.id: (context) => const VerifyByPhone(),
        OtpCodePhone.id: (context) => const OtpCodePhone(),
        VerifyByEmail.id: (context) => const VerifyByEmail(),
        LoginPage.id: (context) => const LoginPage(),
        ForgetPassword.id: (context) => const ForgetPassword(),
        CreateNewPassword.id: (context) => const CreateNewPassword(),
        DonationHistory.id: (context) => const DonationHistory(),
        Settings.id: (context) => const Settings(),
        TermsAndConditions.id: (context) => const TermsAndConditions(),
        Home.id: (context) => const Home(),
        RegisterPage.id: (context) => const RegisterPage(),
        UpdatePage.id: (context) => const UpdatePage(),
        RegisterDonation.id: (context) => const RegisterDonation(),
      },
      initialRoute: LoginPage.id,
    );
  }
}

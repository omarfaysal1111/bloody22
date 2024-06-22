import 'package:bloody/features/register/presentation/widgets/verify_by_email_body.dart';
import 'package:flutter/material.dart';

class VerifyByEmail extends StatelessWidget {
  const VerifyByEmail({super.key});
  static const id='verify by email';

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
    appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon( Icons.arrow_back_ios)),elevation: 0,backgroundColor: Colors.transparent,),
      body:const VerifyByEmailBody(),
    );
  }
}
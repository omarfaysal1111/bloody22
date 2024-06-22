import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class VerifyByEmailBody extends StatelessWidget {
  const VerifyByEmailBody({super.key});
  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
               const SizedBox(height: 40,),
               Text('Email Address',style: Styles.style24Bold,),
                     const SizedBox(height: 10,),
                  Text('We\'re going to send you an email ',style: Styles.style14,),
                  Text('with a login link.',style: Styles.style14,),
                  const SizedBox(height: 40,),
                CustomTextField(hint: 'email',controller: emailController,),
            ],),
          ),
           Align(alignment: Alignment.bottomCenter,child: CustomButton(ontap: (){}, title: 'verify'))

        ],
      ),
    );
  }
}
import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, required this.title});
  final Function()ontap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          height: MediaQuery.of(context).size.height*.08,
          width: double.infinity,
          decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(18)
        
          ),
          child: Center(child: Text(title,style:Styles.style16SemiBold,),),
        ),
      ),
    );
  }
}
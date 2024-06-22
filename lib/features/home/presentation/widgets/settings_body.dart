import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});
  static const id='settings';

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 40,),
              Text('App settings',style: Styles.styles18Bold,),
              const SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Dark Mode',style: Styles.style16SemiBold.copyWith(color: Colors.black),),
                Switch(value: false, onChanged: (value){},inactiveThumbColor: kTextGreyColor,),
            
              ],),
                          const SizedBox(height: 8,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Language',style: Styles.style16SemiBold.copyWith(color: Colors.black),),
                Row(children: [
                  Text('English',style: Styles.style14,),
                  const Icon(Icons.arrow_forward_ios,color: kTextGreyColor,),
                ],),
              ],),
                            const SizedBox(height: 18,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Country',style: Styles.style16SemiBold.copyWith(color: Colors.black),),
                Row(children: [
                  Text('Egypt',style: Styles.style14,),
                  const Icon(Icons.arrow_forward_ios,color: kTextGreyColor,),
                ],),
              ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
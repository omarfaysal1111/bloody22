import 'dart:convert';

import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterDonationBody extends StatefulWidget {
  const RegisterDonationBody({super.key});

  @override
  State<RegisterDonationBody> createState() => _RegisterDonationBodyState();
}

class _RegisterDonationBodyState extends State<RegisterDonationBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGov();
  }

  List g = [];
  String gov_id = "1";
  String cit_id = "1";

  List govs = [];
  Future<void> getGov() async {
    var request = http.MultipartRequest(
        'GET',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/governates'));
    request.fields.addAll({'city_id': '1'});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();

      setState(() {
        g = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        govs.add(g[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  List city = [];
  List g2 = [];
  Future<void> getcity() async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/cities'));
    request.fields.addAll({'governorate_id': gov_id});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();

      setState(() {
        g2 = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        city.add(g2[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  List Hos = [];
  Future<void> getHos() async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://api-service.cloud/vien2vien/public_html/api/hospitals'));
    request.fields.addAll({'city_id': cit_id});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();
      List grr = [];
      setState(() {
        grr = jsonDecode(jsonString);
      });
      for (var i = 0; i < g.length; i++) {
        Hos.add(grr[i]['name_en']);
      }
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Register',
              style: Styles.styles18Bold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/register.jpg',
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Governorate',
                  hintStyle: Styles.style12,
                ),
                items: govs.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov),
                  );
                }).toList(),
                onChanged: (value) {
                  print(value);
                  setState(() {
                    int a = govs.indexWhere((element) => element == value);
                    print(g);
                    gov_id = g[a]['id'].toString();
                    getcity();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'City',
                  hintStyle: Styles.style12,
                ),
                items: city.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    int a = city.indexWhere((element) => element == value);
                    print(g);
                    cit_id = g2[a]['id'].toString();
                    getHos();
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: kTextGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Hospital',
                  hintStyle: Styles.style12,
                ),
                items: Hos.map((gov) {
                  return DropdownMenuItem<String>(
                    value: gov,
                    child: Text(gov),
                  );
                }).toList(),
                onChanged: (value) {}),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

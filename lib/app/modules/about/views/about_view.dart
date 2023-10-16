import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/pembatas.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: purple,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/about.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "About :",
                      style: bold.copyWith(fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 120,
                    ),
                  ),
                  Center(
                    child: const Text(
                      'Versi 1.0.0',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text('Class Book',
                      textAlign: TextAlign.center,
                      style: semiBold.copyWith(fontSize: 16)),
                  RichText(
                    text: TextSpan(
                        text: "Merupakan aplikasi buku",
                        style: regular.copyWith(fontSize: 12, color: black),
                        children: <TextSpan>[
                          TextSpan(
                            text: "\"PAI BS KLS XI KURIKULUM MERDEKA\"",
                            style: regular.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          TextSpan(
                            text:
                                "yang berguna untuk memudahkan siswa belajar dimana saja dan kapan saja",
                            style: regular.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Hak cipta buku',
                      textAlign: TextAlign.center,
                      style: semiBold.copyWith(fontSize: 16)),
                  Text(
                    "Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia",
                    style: regular.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Developer',
                      textAlign: TextAlign.center,
                      style: semiBold.copyWith(fontSize: 16)),
                  Text(
                    "Muhammad Fauzi Natsir S.Kom",
                    style: regular.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: purpleBagroundLight),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      "contact person : fauzip2buin@gmail.com",
                      style: regular.copyWith(
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

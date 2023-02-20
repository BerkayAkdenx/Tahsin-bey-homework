import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_project/DetailPage.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create an Account"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: Center(
                    child: RichText(
                  text: TextSpan(
                      text: 'By clicking  on "Create account" you agree to our',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Term of Use',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // open desired screen
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const DetailPage(),
                                  ),
                                );
                              }),
                        const TextSpan(
                            text: ' and ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Privacy Policy,',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // open desired screen
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const DetailPage(),
                                  ),
                                );
                              }),
                      ]),
                ))),
            Row(
              children: [
                Expanded(
                  child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text:
                                  'I would prefer to receive marketing messages from Bitely',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // open desired screen
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const DetailPage(),
                                    ),
                                  );
                                }),
                        ),
                      )),
                ),
                Checkbox(
                  shape: CircleBorder(),
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  value: this.isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      this.isChecked = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text:
                                  "Share my registration data with Bitely's content poviders for marketing purposes.",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // open desired screen
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const DetailPage(),
                                    ),
                                  );
                                }),
                        ),
                      )),
                ),
                Checkbox(
                  shape: CircleBorder(),
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  value: this.isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      this.isChecked = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ));
  }
}

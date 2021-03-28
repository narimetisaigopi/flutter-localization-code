import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalScreen extends StatefulWidget {
  @override
  _LocalScreenState createState() => _LocalScreenState();
}

class _LocalScreenState extends State<LocalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hello".tr()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "i am your guide Today".tr(),
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      child: Text("English"),
                      onPressed: () {
                        context.locale = Locale("en");
                      }),
                  RaisedButton(
                      child: Text("Telugu"),
                      onPressed: () {
                        context.locale = Locale("te");
                      }),
                  RaisedButton(
                      child: Text("Arabic"),
                      onPressed: () {
                        context.locale = Locale("ar");
                      })
                ],
              )
            ],
          ),
        ));
  }
}

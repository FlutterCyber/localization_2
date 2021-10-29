import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                // Text(...).tr(), qilmasa ishlamaydi
                child: Text(
                  "something",
                  style: TextStyle(fontSize: 20),
                ).tr(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    context.locale = Locale('en', 'US');
                  },
                  height: 45,
                  color: Colors.green,
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  onPressed: () {
                    context.locale = Locale('ko', 'KO');
                  },
                  height: 45,
                  color: Colors.blue,
                  child: Text(
                    "Korean",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  onPressed: () {
                    context.locale = Locale('ja', 'JA');
                  },
                  height: 45,
                  color: Colors.blue,
                  child: Text(
                    "Japanese",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

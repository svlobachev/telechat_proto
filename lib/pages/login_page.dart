import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'welcome'.tr,
                // style: Theme.of(context).textTheme.headline3,
                style: const TextStyle(height: 2, fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'username'.tr),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'password'.tr,
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/mainPage');
                },
                style: ElevatedButton.styleFrom(
                    // primary: primaryColor,
                    ),
                child: Text('enter'.tr),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:telechat_proto/l10n/l10n.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = AppLocalizations.of(context);
    final l10n = context.l10n;
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.welcome,
                // style: Theme.of(context).textTheme.headline3,
                style: TextStyle(height: 2, fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: l10n.username),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: l10n.password,
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: Text(l10n.enter),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/mainPage');
                },
                style: ElevatedButton.styleFrom(
                    // primary: primaryColor,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

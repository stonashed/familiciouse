import 'package:familicouse_app/auth/login_view.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: ListView(padding: EdgeInsets.all(16), children: [
          Image.asset(
            'assets/acc.png',
            height: 50,
            width: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text('First Name')),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text('Last Name')),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text('Email')),
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const LoginView();
                }));
              },
              child: Text(
                'Submit',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Theme.of(context).buttonTheme.colorScheme!.primary),
              ),
              style: TextButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.background,
              ))
        ])));
  }
}

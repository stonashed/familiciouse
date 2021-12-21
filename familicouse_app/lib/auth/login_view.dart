import 'package:familicouse_app/auth/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            'assets/loginn.png',
            height: 50,
            width: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(label: Text(' Email')),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(label: Text('Password')),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Theme.of(context).buttonTheme.colorScheme!.primary),
              ),
              style: TextButton.styleFrom(
                backgroundColor:
                    Theme.of(context).buttonTheme.colorScheme!.background,
              )),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CreateAccount();
                }));
              },
              child: Text(
                'Create  Account',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

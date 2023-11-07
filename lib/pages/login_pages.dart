import 'package:flutter/material.dart';
import 'package:login/pages/dashboard_pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 71, 83, 147),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 85),
                child: Text('Carat Land\n SEVENTEEN',
                    selectionColor: Colors.black12,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Image.asset(
                'assets/logo1.png',
                width: 125,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _inputfields(
                      label: 'Username : ',
                    ),
                    _inputfields(
                      label: 'Password : ',
                      obscure: true,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => DashboardPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('LOGIN'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _inputfields extends StatelessWidget {
  final String label;
  final bool obscure;
  const _inputfields({super.key, this.label = '', this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.pinkAccent,
                width: 0,
              )),
              fillColor: Color.fromARGB(255, 236, 188, 178),
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

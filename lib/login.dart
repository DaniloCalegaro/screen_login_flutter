import 'package:flutter/material.dart';
import 'package:screen_login_flutter/components/alert_custom_yesno.dart';
import 'package:screen_login_flutter/components/button_custom.dart';
import 'package:screen_login_flutter/components/button_custom_icon.dart';
import 'package:screen_login_flutter/components/text_field_custom.dart';
import 'package:screen_login_flutter/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userName = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 185, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: 200,
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.contain,
                ))),
            const SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                      child: Text(
                        'Conecte-se',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        'Conecte-se e descubra as grandes novidades em aprendizagem no Flutter',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(131, 0, 0, 0),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, 0))
              ]),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 25),
                          textFieldCustom('Usuário', false, (value) {
                            userName = value;
                          }),
                          const SizedBox(height: 18),
                          textFieldCustom('Senha', true, (value) {
                            password = value;
                          }),
                          const SizedBox(height: 10),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: AlertCustomYesNo(
                                buttonText: 'Esqueceu sua senha?',
                                descritption:
                                    'Para primeiro acesso tente usar:\nUsuário: admin\nSenha: admin',
                              )),
                          const SizedBox(height: 15),
                          buttonCustom('Entrar', () {
                            if (userName == 'admin' && password == 'admin') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
                              );
                            } else {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Senha incorreta!'),
                                  content: const Text(
                                      'Tente novamente com novo nome de usuário e senha válido.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }),
                          const SizedBox(height: 40),
                          buttonCustomIcon('Entrar com Google',
                              'http://pngimg.com/uploads/google/google_PNG19635.png'),
                          const SizedBox(height: 10),
                          buttonCustomIcon('Entrar com  Facebook',
                              'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19754.png')
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

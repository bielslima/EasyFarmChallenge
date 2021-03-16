import 'package:easy_farm/di/injectable.dart';
import 'package:easy_farm/pages/login/widgets/Input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import "./controller/login.controller.dart";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColor,
          // color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Spacer(),
              Logo(),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormLogin(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * .6;
    return Container(
      width: size,
      // height: size,
      // color: Colors.black,
      child: Image.asset("assets/images/easyfarm-logo-white-2.png"),
    );
  }
}

class FormLogin extends StatelessWidget {
  final LoginController _controller = getIt<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Input(
            labelText: 'E-mail',
            txtController: _controller.txtEmail,
            validator: (String v) {
              if (v.length == 0) return "Campo não pode ficar vazio.";
            },
          ),
          SizedBox(
            height: 20,
          ),
          Input(
            labelText: 'Senha',
            txtController: _controller.txtSenha,
            validator: (String v) {
              if (v.length == 0) return "Campo não pode ficar vazio.";
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor,
              ),
            ),
            onPressed: _controller.login,
            child: Observer(
              builder: (context) {
                if (_controller.isLoading)
                  return SpinKitThreeBounce(
                    color: Colors.white,
                    size: Theme.of(context).textTheme.bodyText2.fontSize,
                  );
                else
                  return Text("Entrar");
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:psmna10/widgets/loading_modal_widget.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import '../responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  final txtEmail = TextFormField(
    decoration: const InputDecoration(
        label: Text('Email user'), border: OutlineInputBorder()),
  );
  final txtPass = TextFormField(
    decoration: const InputDecoration(
        label: Text('Password user'), border: OutlineInputBorder()),
  );
  final spaceHorizont = SizedBox(height: 10);

  final btngoogle = SocialLoginButton(
      buttonType: SocialLoginButtonType.google, onPressed: () {});
  final btnface = SocialLoginButton(
      buttonType: SocialLoginButtonType.facebook, onPressed: () {});
  final btngit = SocialLoginButton(
      buttonType: SocialLoginButtonType.github, onPressed: () {});

  final imgLogo = Image.asset(
    'assets/logo.png',
    height: 200,
  );
  @override
  Widget build(BuildContext context) {
    final txtRegister = Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          child: const Text(
            'Crear cuenta :)',
            style:
                TextStyle(fontSize: 18, decoration: TextDecoration.underline),
          )),
    );

    final btnEmail = SocialLoginButton(
        buttonType: SocialLoginButtonType.generalLogin,
        onPressed: () {
          isLoading = true;
          setState(() {});
          Future.delayed(Duration(milliseconds: 4000)).then((value) {
            isLoading = false;
            setState(() {});
            Navigator.pushNamed(context, '/dash');
          });
        });

return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Responsive(
        mobile: Mobile(
          btnEmail: btnEmail,
          isLoading: isLoading,
          imgLogo: imgLogo,
          btnface: btnface,
          btngit: btngit,
          btngoogle: btngoogle,
          spaceHorizont: spaceHorizont,
          txtPass: txtPass,
          txtRegister: txtRegister,
          txtEmail: txtEmail,
        ),
        tablet: Tablet(
          btnEmail: btnEmail,
          isLoading: isLoading,
          imgLogo: imgLogo,
          btnface: btnface,
          btngit: btngit,
          btngoogle: btngoogle,
          spaceHorizont: spaceHorizont,
          txtPass: txtPass,
          txtRegister: txtRegister,
          txtEmail: txtEmail,
        ),
        desktop: Desktop(
          btnEmail: btnEmail,
          isLoading: isLoading,
          imgLogo: imgLogo,
          btnface: btnface,
          btngit: btngit,
          btngoogle: btngoogle,
          spaceHorizont: spaceHorizont,
          txtPass: txtPass,
          txtRegister: txtRegister,
          txtEmail: txtEmail,
        ),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile(
      {super.key,
      required this.btnEmail,
      required this.isLoading,
      required this.imgLogo,
      required this.txtEmail,
      required this.btnface,
      required this.btngit,
      required this.btngoogle,
      required this.spaceHorizont,
      required this.txtPass,
      required this.txtRegister});
  final SizedBox spaceHorizont;
  final TextFormField txtPass;
  final SocialLoginButton btngit;
  final SocialLoginButton btngoogle;
  final SocialLoginButton btnface;
  final SocialLoginButton btnEmail;
  final Padding txtRegister;
  final bool isLoading;
  final Image imgLogo;
  final TextFormField txtEmail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: .4,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/fondo.jpg'))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    txtEmail,
                    spaceHorizont,
                    txtPass,
                    spaceHorizont,
                    btnEmail,
                    spaceHorizont,
                    btngoogle,
                    spaceHorizont,
                    btnface,
                    spaceHorizont,
                    btngit,
                    spaceHorizont,
                    txtRegister
                  ],
                ),
                Positioned(
                  top: 100,
                  child: imgLogo,
                )
              ],
            ),
          ),
        ),
        isLoading ? const LoadingModalWidget() : Container()
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet(
      {super.key,
      required this.btnEmail,
      required this.isLoading,
      required this.imgLogo,
      required this.txtEmail,
      required this.btnface,
      required this.btngit,
      required this.btngoogle,
      required this.spaceHorizont,
      required this.txtPass,
      required this.txtRegister});
  final SizedBox spaceHorizont;
  final TextFormField txtPass;
  final SocialLoginButton btngit;
  final SocialLoginButton btngoogle;
  final SocialLoginButton btnface;
  final Padding txtRegister;
  final SocialLoginButton btnEmail;
  final bool isLoading;
  final Image imgLogo;
  final TextFormField txtEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .4,
          fit: BoxFit.cover,
          image: AssetImage('assets/fondo.jpg'),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: imgLogo),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txtEmail,
                      spaceHorizont,
                      txtPass,
                      spaceHorizont,
                      btnEmail,
                      spaceHorizont,
                      btngoogle,
                      spaceHorizont,
                      btnface,
                      spaceHorizont,
                      btngit,
                      spaceHorizont,
                      txtRegister
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop(
      {super.key,
      required this.btnEmail,
      required this.isLoading,
      required this.imgLogo,
      required this.txtEmail,
      required this.btnface,
      required this.btngit,
      required this.btngoogle,
      required this.spaceHorizont,
      required this.txtPass,
      required this.txtRegister});
  final SizedBox spaceHorizont;
  final TextFormField txtPass;
  final SocialLoginButton btngit;
  final SocialLoginButton btngoogle;
  final SocialLoginButton btnface;
  final Padding txtRegister;
  final SocialLoginButton btnEmail;
  final bool isLoading;
  final Image imgLogo;
  final TextFormField txtEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .4,
          fit: BoxFit.cover,
          image: AssetImage('assets/fondo.jpg'),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: imgLogo),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txtEmail,
                      spaceHorizont,
                      txtPass,
                      spaceHorizont,
                      btnEmail,
                      spaceHorizont,
                      btngoogle,
                      spaceHorizont,
                      btnface,
                      spaceHorizont,
                      btngit,
                      spaceHorizont,
                      txtRegister
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

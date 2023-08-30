import 'package:flutter/material.dart';
import 'package:meuapp/view/alunos_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color textos = const Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset("assets/images/logotipo_firma.png")),
            const SizedBox(
              height: 40,
            ),
            emailText(textos),
            passwordText(textos),
            const SizedBox(
              height: 40,
            ),
            loginButton(context)
          ],
        ),
      ),
    );
  }
}

Widget emailText(textos) {
  return TextField(
    style: TextStyle(color: textos),
    cursorColor: textos,
    keyboardType: TextInputType.emailAddress,
    maxLength: 30,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      filled: true,
      fillColor: const Color(0xFF212C34),
      hintText: "Informe seu email",
      hintStyle: TextStyle(color: textos),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(37),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
  );
}

Widget passwordText(textos) {
  return TextField(
    style: TextStyle(color: textos),
    cursorColor: textos,
    //keyboardType: TextInputType.emailAddress,
    maxLength: 15,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      filled: true,
      fillColor: const Color(0xFF212C34),
      hintText: "Informe a senha",
      hintStyle: TextStyle(color: textos),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(37),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
  );
}

Widget loginButton(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: ElevatedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: const Color(0xFFFF285B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AlunosPage(),
          ),
        );
      },
      child: const Text(
        "Entrar",
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

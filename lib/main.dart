import 'package:flutter/material.dart';
import 'package:flutter_application/register_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voz da Criança',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFBDBDBD), Color(0xFFE0E0E0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            SizedBox(height: 20),
            Image(image: NetworkImage('https://i.imgur.com/0SXkZ8H.png')),
            Text(
              'Um aplicativo para que os cidadãos consigam realizar denúncias referentes ao trabalho infantil sem que precise realizar uma ligação a qual muitas vezes existe um grande demora para ser concretizada. Através do aplicativo “Voz da infância” o usuário poderá realizar uma denúncia tanto em tempo real, quanto posteriormente, apenas com alguns cliques.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF',
                fontSize: 16,
                color: Colors.blueGrey[900],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900],
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Registrar',
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900],
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Entrar sem cadastro',
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 16,
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

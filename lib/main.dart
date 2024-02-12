
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добро пожаловать!'),
      ),
      body: Center(
        child: Column(
          children: [
            Container( margin: const EdgeInsets.all(20),
              child: Column(
              children: [
                 const Text ('Авторизация',
                  style: TextStyle(
                    fontSize: 28,
                  )
                 ),
                 const TextField(decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Введите логин",
                   fillColor: Colors.black12,
                    filled: true
                )
               ),
               const TextField(decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Введите пароль",
                   fillColor: Colors.black12,
                    filled: true
                )
               ),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

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
        backgroundColor: const Color.fromARGB(255, 194, 249, 255),
      ),
      body: Center(
        child: Container( margin: const EdgeInsets.all(20),

              child: Column(
              children: [
                 const Text('Для продолжения Вам необходимо пройти авторизацию.',
                        style: TextStyle(
                        fontSize: 28,
                      )
                      ),
                Container(
                  margin: const EdgeInsetsDirectional.only(bottom: 10),
                  constraints: const BoxConstraints (maxWidth: 200),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ 
                    Text('Телефон или e-mail',
                       style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                      TextField(
                      decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: "Введите логин",
                       fillColor: Color.fromARGB(49, 66, 0, 131),
                        filled: true
                    )
                   ),
                   Text('Пароль',
                       style: TextStyle(
                       fontSize: 20,
                      )
                    ),
                    TextField(decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: "Введите пароль",
                       fillColor: Color.fromARGB(31, 0, 117, 130),
                        filled: true
                    )
                   )
                  ]
                  ),
                ),
                ElevatedButton(
                      child: const Text('Войти'), onPressed:(){}
                    ),
                 ElevatedButton(
                      child: const Text('Регистрация'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                    ),
                  ],
                ),
              )
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
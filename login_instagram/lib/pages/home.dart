import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //String texto;
  String login = '';
  String senha = '';

  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  bool get isLogin => login.isNotEmpty;
  bool get isSenha => senha.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(direction: Axis.horizontal, children: [
        Container(
          width: 1000,
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Image.asset(
                "assets/Logo.png",
                height: 150,
              ),
              TextField(
                // onChanged: (value) => countLogin = value.length,
                controller: loginController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Número de telefone, email ou nome de usuario'),
              ),
              const SizedBox(height: 25),
              TextField(
                /*onChanged: (value) => {
                  if (value.isNotEmpty) {senhaNaoVazia}
                },*/
                controller: senhaController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Senha'),
              ),
              Wrap(
                children: [
                  const Text(
                    'Esqueceu seus dados de login ? ',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Obtenha ajuda para entrar',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Entrar"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      indent: 5,
                      endIndent: 5,
                      color: Colors.black,
                    ),
                  ),
                  Text('OU'),
                  Expanded(
                    child: Divider(
                      indent: 5,
                      endIndent: 5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.facebook_outlined,
                    color: Colors.blue,
                    size: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Entre com o Facebook',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Divider(
            indent: 5,
            endIndent: 5,
            color: Colors.grey,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Não tem uma conta ? ',
            style: TextStyle(color: Colors.grey),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.blue[900]),
              ))
        ])
      ]),
    );
  }
}

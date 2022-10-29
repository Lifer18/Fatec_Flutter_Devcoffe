import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  final imageURL = 'https://i.imgur.com/016TkK6.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.pink, title: const Text("About me")),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.pinkAccent),
                accountName: const Text('Fernando Maldonado'),
                accountEmail:
                    const Text('fernando.fernandes10@fatec.sp.gov.br'),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageURL)),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('E-mail Comercial'),
                subtitle: Text('Me envie um e-mail!'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            imageURL,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80),
            child: Text(
              'Fernando Maldonado',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.pink,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(),
                Text('Flutter Developer'),
              ],
            ),
          ),
          const Divider(
            indent: 32,
            endIndent: 32,
            height: 24,
            thickness: 3,
            color: Colors.pink,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              lorem,
              style: const TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Follow Me'),
        icon: Icon(Icons.favorite),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}

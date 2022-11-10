import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return DefaultTabController(length: 2,
        child: Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.pink, title: const Text("About me"),bottom:const TabBar(tabs: [
            Tab(text: 'Pessoal',),
            Tab(text: 'Profissional',)
          ],),),
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
      body: TabBarView(children:[
        _buildPersonalContent(),
        _buildProfessionalContent()
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Follow Me'),
        icon: const Icon(Icons.favorite),
        backgroundColor: Colors.pinkAccent,
      ),
    )
    );
  }
}

  _buildProfessionalContent() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
          child: Text(
            'Meus Projetos',
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
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
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          child: Text(
            "Possuo diversos projetos desenvolvidos em estudos na Faculdade e em cursos extracurriculares, todos os repositórios dos mesmos se encontram em meu GitHub!",
            style: GoogleFonts.robotoMono(fontSize: 18),
            textAlign: TextAlign.justify,


          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
          child: Text(
            'Minhas Redes',
            style: GoogleFonts.rubik(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const ListTile(
          leading: Icon(FontAwesomeIcons.github),
          title: Text('GitHub'),
          subtitle: Text('https://www.github.com/Lifer18'),
        ),
        const ListTile(
          leading: Icon(FontAwesomeIcons.linkedin),
          title: Text('LinkedIn'),
          subtitle: Text('https://www.linkedin.com/in/fernando-maldonado-fernandes'),
        ),
        const ListTile(
          leading: Icon(FontAwesomeIcons.twitter),
          title: Text('Twitter'),
          subtitle: Text('https://www.twitter.com/liferlive'),
        ),
      ],
    );
  }

_buildPersonalContent() {
  const imageURL = 'https://i.imgur.com/016TkK6.png';

  return Column(
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
      const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Me chamo Fernando Maldonado Fernandes , tenho interesse pelo mundo da programação (back-end) desde meu primeiro curso em 2016, possuo facilidade em aprender e tenho rápida compreensão de lógica de programação. Atualmente estou a procura de iniciar no mercado de Desenvolvimento, tenho conhecimentos em C++ e PHP e estou atualmente interessado e estudando Java.",
          style: TextStyle(fontSize: 16, height: 1.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}

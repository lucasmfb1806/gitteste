import 'package:flutter/material.dart';

void main() {
  runApp(const BullyApp());
}

class BullyApp extends StatelessWidget {
  const BullyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bully Album',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> tracks = const [
    "Track 1 - King",
    "Track 2 - This a Must",
    "Track 3 - Father - feat Travis Scott",
    "Track 4 - All the love - feat André Troutman",
    "Track 5 - Punch Drunk",
    "Track 6 - Whatever works",
    "Track 7 - Mama's Favorite",
    "Track 8 - Sisters & Brothers",
    "Track 9 - Bully - feat CeeLo Green",
    "Track 10 - Highs & Lows",
    "Track 11 - I can't wait",
    "Track 12 - White Lines - feat André Troutman ",
    "Track 13 - Circles - feat Don Toliver",
    "Track 14 - Preacher Man",
    "Track 15 - Beauty & the Beast",
    "Track 16 - Damn",
    "Track 17 - Last Breath - feat Peso Pluma",
    "Track 18 - This One Here",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BULLY"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.asset(
      'assets/Bully.png',
      height: 200,
      fit: BoxFit.cover,
    ),
  ),
),

const SizedBox(height: 20),
            const Text(
              "Sobre o Álbum",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
  "Bully é o décimo segundo álbum de estúdio do rapper americano Kanye West. "
  "Foi lançado em 28 de março de 2026, através de YZY e Gamma.\n\n"

  "West produziu o álbum ao lado de seu diretor musical André Troutman, "
  "The Legendary Traxster, 88-Keys e James Blake, entre outros. "
  "O projeto também conta com participações de Travis Scott, CeeLo Green, "
  "Peso Pluma e Don Toliver.\n\n"

  "O desenvolvimento do álbum começou após Vultures 2 (2024). "
  "Inicialmente planejado para 2025, Bully passou por vários adiamentos "
  "até seu lançamento final.\n\n"

  "O álbum possui uma estética minimalista e intensa, com forte uso de samples "
  "e vocais mais melódicos. Em suas versões iniciais, algumas faixas utilizavam "
  "voz gerada por inteligência artificial, posteriormente substituída pela "
  "voz real de Kanye.\n\n"

  "Bully recebeu críticas geralmente positivas, com destaque para sua produção, "
  "embora alguns críticos tenham considerado o projeto menos inovador."
),
            const SizedBox(height: 20),

            const Text(
              "Tracklist",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: tracks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.music_note, color: Colors.white),
                    title: Text(tracks[index]),
                  );
                },
              ),
            ),

            const SizedBox(height: 10),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Vá para https://open.spotify.com/intl-pt/album/5poA9SAx0Xiz1cf17fWBLS"),
                      backgroundColor: Colors.white,
                    ),
                  );
                },
                child: const Text("OUVIR AGORA"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
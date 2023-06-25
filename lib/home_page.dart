import 'package:flutter/material.dart';
import 'package:google_translator/google_translator.dart';
import 'constant/color.dart';
import 'package:flutter_circle_flags_svg/flutter_circle_flags_svg.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future<http.Response> fetchAlbum() {
  return http.get(Uri.parse(
      'https://google-translate1.p.rapidapi.com/language/translate/v2/detect'));
}

    return Scaffold(
      drawer: Drawer(
        width: 255,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: ColorApp.bluecolor,
              ),
              child: Text(
                'languege translator',
                style: TextStyle(color: ColorApp.white, fontSize: 16),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: ColorApp.bluecolor,
        title: const Row(
          children: [Text('languege translator')],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 47,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                  color: ColorApp.backpurpel,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 18),
                        child: CircleFlag(
                          'us',
                          size: 30,
                        ),
                      ),
                      const Text(
                        'English',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.sync_alt,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Germany',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 18),
                        child: CircleFlag(
                          'de',
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const FirstLanguage(),
          const SizedBox(
            height: 25,
          ),
          const SecondLanguage()
        ],
      ),
    );
  }
}

class FirstLanguage extends StatelessWidget {
  const FirstLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 218,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          color: ColorApp.backpurpel,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorApp.bluecolor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.volume_up_rounded,
                        color: ColorApp.bluecolor,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.close_rounded,
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Text(
                'Hello how are you?',
                style: TextStyle(fontSize: 18),
              ).translate(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: ColorApp.bluecolor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: const Icon(
                      Icons.mic_rounded,
                      color: ColorApp.white,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: ColorApp.orang,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        'Translate',
                        style: TextStyle(color: ColorApp.white, fontSize: 15),
                      )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondLanguage extends StatelessWidget {
  const SecondLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 218,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          color: ColorApp.backpurpel,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Germany',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorApp.bluecolor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.volume_up_rounded,
                        color: ColorApp.bluecolor,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Hallo wie gehts?',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.content_copy_rounded,
                    color: ColorApp.bluecolor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.share_rounded,
                    color: ColorApp.bluecolor,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: ColorApp.bluecolor,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}


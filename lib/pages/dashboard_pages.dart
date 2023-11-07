import 'package:flutter/material.dart';
import 'package:login/pages/profil_pages.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset(
            'assets/bg1.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 60, 22, 10),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/pp.jpg',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hi Carats',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Selamat bergabung di Carat Land',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Jangan Lupa Streaming God Of Music Ya!',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 220, 0, 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: [
                        _tombolmenu(
                          gambar: 'assets/kalender.png',
                        ),
                        _tombolmenu(
                          gambar: 'assets/music.png',
                        ),
                        _tombolmenu(
                          gambar: 'assets/albumicon.jpg',
                        ),
                        _tombolmenu(
                          gambar: 'assets/carat.png',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Team Seventeen',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _itemteam(
                            gambarteam: 'assets/hiphop.png',
                          ),
                          _itemteam(
                            gambarteam: 'assets/vocal.png',
                          ),
                          _itemteam(
                            gambarteam: 'assets/perform.jpg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13))),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (c) => ProfilPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Profil'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class _itemteam extends StatelessWidget {
  final String gambarteam;
  const _itemteam({super.key, this.gambarteam = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Image.asset(
          gambarteam,
          width: 250,
          height: 132,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _tombolmenu extends StatelessWidget {
  final String gambar;
  const _tombolmenu({super.key, this.gambar = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(9),
      child: Image.asset(
        gambar,
        width: 44,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: const Color.fromARGB(255, 139, 210, 244)),
    );
  }
}

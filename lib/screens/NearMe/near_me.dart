import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';

class NearMe extends StatefulWidget {
  const NearMe({Key? key}) : super(key: key);

  @override
  State<NearMe> createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Yakınımdaki Duraklar'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              MyListTile(
                padding: 20,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      '50806 - Etimesgut İlkokulu',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                padding: 20,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      '50807 - Turgut Özal Köprüsü',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                padding: 20,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      '51155 - Anadolu Kız Meslek Lisesi',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                padding: 20,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      '51157 - Mehmetçik Lisesi',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                padding: 20,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Text(
                      '51159 - Hava İstihkam Komutanlığı',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

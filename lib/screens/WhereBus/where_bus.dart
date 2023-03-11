import 'package:ego_asistan/screens/StationDetail/station_detail.dart';
import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';

class WhereBus extends StatefulWidget {
  const WhereBus({Key? key}) : super(key: key);

  @override
  State<WhereBus> createState() => _WhereBusState();
}

class _WhereBusState extends State<WhereBus> {
  TextEditingController _textEditingController = TextEditingController();

  void search() {
    if (_textEditingController.text != '50806') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Böyle bir durak yok'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => StationDetail()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Otobüsüm Nerede'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                          hintText: '5 haneli durak numarası',
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                        // readOnly: true,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: search,
                      child: Text('Ara'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
      ),
    );
  }
}

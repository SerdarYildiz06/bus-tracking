import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';

class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({Key? key}) : super(key: key);

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Duyurular'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            MyListTile(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text('Öğrenci abonman uygulamasında yeni dönem.'),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            MyListTile(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text('Cng fiyat tarifesinde halkımız için değişiklik talep ediyoruz.'),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            MyListTile(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text('Ego Genel Müdürlüğü 80. Yılını kutluyor.'),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            MyListTile(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text('Güdül ve Nallıhan otobüs seferleri başlıyor.'),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            MyListTile(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text('Ego\'dan Avrupa\'nın en büyük doğal gaz dolum istasyonu.'),
                    ),
                  ],
                )),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

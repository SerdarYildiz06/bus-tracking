import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class StationDetail extends StatefulWidget {
  const StationDetail({Key? key}) : super(key: key);

  @override
  State<StationDetail> createState() => _StationDetailState();
}

class _StationDetailState extends State<StationDetail> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('50806 - Etimesgut İlkokulu'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MyListTile(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hat:  50806 - Etimesgut İlkokulu',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Başlangıç:  Mevcut Konum',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Bitiş:  Etimesgut İlkokulu',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                MyListTile(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('533 - Ulus-Elvankent'),
                        subtitle: Text('50806 - Etimesgut İlkokulu'),
                        trailing: Text('5 dk'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('Engelli Alanı'),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            ),
                            Spacer(),
                            Text('Seç'),
                            Checkbox(
                                value: selected,
                                onChanged: (val) {
                                  setState(() {
                                    selected = val!;
                                  });
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        if (!selected) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Lütfen yolculuk seçiniz'),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        // show snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Row(
                              children: [
                                Text('Yolculuk talebi oluşturuldu'),
                                SizedBox(width: 10),
                                Icon(Icons.check),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Yolculuk talebi geri alındı'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  },
                                  child: Text('Geri Al'),
                                ),
                              ],
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                      child: Text('Yolculuk Talebi Oluştur'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

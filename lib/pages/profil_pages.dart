import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 71, 83, 147),
        title: Text('Profil Admin'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/zahwa.jpg.png'),
              ),
              SizedBox(height: 16),
              DataTable(
                columns: [
                  DataColumn(label: Text('')),
                  DataColumn(label: Text('')),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Nama')),
                      DataCell(Text('ZAHWA OKTAVIA WIBOWO')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('NPM')),
                      DataCell(Text('21670093')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Prodi/Kelas')),
                      DataCell(Text('Teknik Informatika/ 5C')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

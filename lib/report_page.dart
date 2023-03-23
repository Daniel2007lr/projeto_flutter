import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application/login_page.dart';
import 'package:flutter_application/profile_page.dart';
import 'package:flutter_application/my_reports.dart';

import 'dart:io';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  File? _image;

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova denúncia"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Minhas denúncias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyReportsPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Local da ocorrência',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Data do ocorrido',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Tipo de denúncia',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: getImage,
              child: Text('Importar foto/tirar foto'),
            ),
            SizedBox(height: 16.0),
            _image == null
                ? Text('Nenhuma imagem selecionada.')
                : Image.file(_image!),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Enviar denúncia'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> reports = [
      ReportItem(title: "Denúncia 1", description: "Descrição da denúncia 1"),
      ReportItem(title: "Denúncia 2", description: "Descrição da denúncia 2"),
      ReportItem(title: "Denúncia 3", description: "Descrição da denúncia 3"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas denúncias"),
      ),
      body: ListView(
        children: reports,
      ),
    );
  }
}

class ReportItem extends StatelessWidget {
  final String title;
  final String description;

  ReportItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

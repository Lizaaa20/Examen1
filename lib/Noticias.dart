import 'package:flutter/material.dart';


class NoticiasScreen extends StatelessWidget {
  final List<News> newsList = [
    News(
      title: 'Noticia 1',
      description: 'Descripción de la noticia 1.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    News(
      title: 'Noticia 2',
      description: 'Descripción de la noticia 2.',
      imageUrl: 'https://via.placeholder.com/150',
    ),
    // Agrega más noticias aquí si lo deseas
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            child: ListTile(
              leading: Image.network(news.imageUrl),
              title: Text(news.title),
              subtitle: Text(news.description),
              onTap: () {
                // Puedes agregar navegación a una pantalla de detalles aquí
              },
            ),
          );
        },
      ),
    );
  }
}

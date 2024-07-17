import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'name': 'Entis Mahmuid',
      'umur': '38 Tahun',
      'alamat': 'Cibaduyut',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/870/200/300?grayscale&blur=2'
      ]
    },
    {
      'name': 'Jajang',
      'umur': '23 Tahun',
      'alamat': 'Zimbabwe',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/870/200/300?grayscale&blur=2'
      ]
    },
    {
      'name': 'Dapud',
      'umur': '23 Tahun',
      'alamat': 'Cihamplas',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/870/200/300?grayscale&blur=2'
      ]
    },
    {
      'name': 'Rizky',
      'umur': '39 Tahun',
      'alamat': 'Papua',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/870/200/300?grayscale&blur=2'
      ]
    },
    {
      'name': 'Ujang Golok',
      'umur': '36 Tahun',
      'alamat': 'Cisarua',
      'photo': [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/id/870/200/300?grayscale&blur=2'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.green[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('nama :${data[index]['name']}'),
                  Text('umur :${data[index]['umur']}'),
                  Text('alamat :${data[index]['alamat']}'),
                  Text('Galeri'),
                  SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data[index]['photo'].length,
                        itemBuilder: (context, imgIndex) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.network(
                                data[index]['photo'][imgIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ))
                ],
              ),
            ),
          );
        });
  }
}

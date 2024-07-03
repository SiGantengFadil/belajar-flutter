import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  @override
 Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Layout',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Center(
                   child: Image.network(
                    width: 130,
                    'https://awsimages.detik.net.id/community/media/visual/2023/06/21/buzz-dan-woody-reuni-di-toy-story-5.jpeg?w=700&q=90'
                   ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Image.network(
                        width: 130,
                        'https://cdn0-production-images-kly.akamaized.net/nFLDJcxaRN4xUkhKpFWLLQvW5kA=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/712769/original/toy-story-3-508098b122af2.jpg'
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Image.network(
                          'https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_.jpg'
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Toy story 3'),
                        Text('Film Kartun',),
                        Text('Tonton'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Image.network(
                          'https://cdn.shopify.com/s/files/1/0310/7487/7577/products/00719ToyStory_Blackstone__Rounded_68fca521-8ef3-42ec-8250-fbaef4f85431_300x.webp?v=1673447814'
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Toy Story 2'),
                        Text('Film Kartun',),
                        Text('Tonton'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
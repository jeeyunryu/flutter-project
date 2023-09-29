import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border)),
          color: Colors.yellow,
          onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Jeeyun Ryu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '22000239',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    // Color color = Theme.of(context).primaryColor;
    Color color = Colors.black;

    Widget buttonSection = Container(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.message, 'MESSAGE'),
        _buildButtonColumn(color, Icons.email, 'EMAIL'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        _buildButtonColumn(color, Icons.description, 'ETC'),

      ],
      ),

    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          const Icon(Icons.message, size: 40.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child:  const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                   Text(
                      'Recent Message',
                      style:  TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  
                   Text( 
                    'Long time no see!',
                    
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // child: const Text(
      //   'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      //   'Alps. Situated 1,578 meters above sea level, it is one of the '
      //   'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      //   'half-hour walk through pastures and pine forest, leads you to the '
      //   'lake, which warms to 20 degrees Celsius in the summer. Activities '
      //   'enjoyed here include rowing, and riding the summer toboggan run.',
      //   softWrap: true,
      // ),
    );
    return MaterialApp(
      title: 'Flutter layout demp',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter layout demo'),
        // ),
        // body: const Center(
        //   child: Text('Hello World'),
        // ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            const Divider(
              height: 1.0,
              color: Colors.black,
            ),
            buttonSection,
            const Divider(
              height: 1.0,
              color: Colors.black,
            ),
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          // padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label, 
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
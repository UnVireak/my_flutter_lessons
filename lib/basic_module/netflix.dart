import 'package:flutter/material.dart';

import 'package:cc/basic_module/detailPage.dart';

class NetflixLayoutScreen extends StatefulWidget {
  @override
  State<NetflixLayoutScreen> createState() => _NetflixLayoutScreenState();
}

class _NetflixLayoutScreenState extends State<NetflixLayoutScreen> {
  // NetflixLayoutScreen({Key? key}) : super(key: key);

  bool _dark = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dark ? Color.fromARGB(255, 237, 237, 248) : Color.fromARGB(255, 49, 46, 48),
      appBar: AppBar(
        title: Text("Netflix"),
        backgroundColor: _dark
            ? Color.fromARGB(255, 210, 206, 218)
            : Color.fromARGB(255, 17, 17, 18),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
              icon: Icon(_dark ? Icons.dark_mode : Icons.light_mode))
        ],
      ),
      body: _buildMainListView(context),
    );
  }

  Widget _buildMainListView(context) {
    return ListView(
      children: [
        _buildListView1(context),
        _buildListView2(),
      ],
    );
  }

  Widget _buildListView1(context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _imageList
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(e),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(e),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildListView2() {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _imageList
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  List<String> _imageList = [
    "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81QlgQbZnDL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMDgxOTdjMzYtZGQxMS00ZTAzLWI4Y2UtMTQzN2VlYjYyZWRiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY1200_CR90,0,630,1200_AL_.jpg",
    "https://resizing.flixster.com/_bfhe4PWPeyvX1XJe4LM_SJHG8k=/ems.cHJkLWVtcy1hc3NldHMvdHZzZWFzb24vMTVmMDViYjktN2ZiNS00OThhLWFmNjEtOTFiZWUyZWQ3NWU0LmpwZw==",
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p159366_p_v10_at.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81QlgQbZnDL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/M/MV5BMDgxOTdjMzYtZGQxMS00ZTAzLWI4Y2UtMTQzN2VlYjYyZWRiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY1200_CR90,0,630,1200_AL_.jpg",
    "https://resizing.flixster.com/_bfhe4PWPeyvX1XJe4LM_SJHG8k=/ems.cHJkLWVtcy1hc3NldHMvdHZzZWFzb24vMTVmMDViYjktN2ZiNS00OThhLWFmNjEtOTFiZWUyZWQ3NWU0LmpwZw==",
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p159366_p_v10_at.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p159366_p_v10_at.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg"
  ];
}

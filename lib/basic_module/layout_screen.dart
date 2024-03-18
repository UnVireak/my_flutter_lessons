import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  // const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildGrid(),
    );
  }

  Widget _buildGrid() {
    return GridView.count(
      childAspectRatio: 6/10,
      crossAxisCount: 3,
      children: _imageList.map((e) => Image.network(e,fit: BoxFit.cover,)).toList(),
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

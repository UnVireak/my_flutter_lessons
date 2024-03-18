import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:

                  LinearGradient(colors: [
                    Color(0xFF26A4C3),
                    Color(0XFF1B8)])
                    ),
        ),
       
        title: Text("Basic App"),
        backgroundColor: Color.fromRGBO(199, 16, 144, 0.6),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.arrowshape_turn_up_left_fill)),
        ],
      ),
      // drawer: Drawer(
      //   child: Image.network(
      //     "https://w0.peakpx.com/wallpaper/443/187/HD-wallpaper-avengers-logo-avengers-endgame-heroes.jpg",
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // endDrawer: Drawer(
      //    child: Image.network("https://w0.peakpx.com/wallpaper/443/187/HD-wallpaper-avengers-logo-avengers-endgame-heroes.jpg", fit:BoxFit.cover,),
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () {},
      ),
      
      body: InkWell(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());

        },

        child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                child: TextField(keyboardType: TextInputType.number,
                ),)
              ],),
        // color: Colors.lime,
        // width: double.maxFinite,
        // height: double.infinity,
        
        // margin: EdgeInsets.symmetric(horizontal: 80,vertical: 	20),
        // child: Text("សួស្ដី", style: GoogleFonts.moul(fontSize:50),),
      //  alignment: Alignment.center,

    

      ),

      // child: Image.network(
      //     "https://i.ebayimg.com/images/g/cR0AAOSwOupg4Yhq/s-l1200.jpg", fit:BoxFit.cover,),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.people),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.play_arrow),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}

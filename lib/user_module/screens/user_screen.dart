import 'package:flutter/material.dart';
import '/user_module/models/random_user_model.dart';
import '/user_module/services/user_service.dart';

class UserScreen extends StatefulWidget {
  // const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late Future<RandomUserModel> _randomUserModel = UserService.getAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Screen"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: FutureBuilder<RandomUserModel>(
        future: _randomUserModel,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return _buildErrorRefresh();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return _buildGridView(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _buildErrorRefresh() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Something went wrong"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _randomUserModel = UserService.getAPI();
                });
              },
              child: Text("Refresh")),
        ],
      ),
    );
  }

  Widget _buildGridView(RandomUserModel? data) {
    if (data == null) {
      return SizedBox();
    }
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          _randomUserModel = UserService.getAPI();
        });
      },
      child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3,
          ),
          itemCount: data.results.length,
          itemBuilder: (context, index) {
            return _buildItem(data.results[index]);
          }),
    );
  }

  Widget _buildItem(Result item) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => MovieDetailPage(item),
        //   ),
        // );
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Image.network(item.picture.large, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              "${item.name.first} ${item.name.last}",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

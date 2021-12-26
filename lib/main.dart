import 'package:flutter/material.dart';
import 'package:newsapp/components/customlisttile.dart';
import 'package:newsapp/services/api_services.dart';
//ignore_for_file:prefer_const_constructors
import 'models/article_model.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Apiservice client=Apiservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newsapp'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder(
        future:client.getArticle() ,
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if(snapshot.hasData)
            {
              List<Article> articles=snapshot.data;
              return ListView.builder(
                  itemBuilder:(context,index)=>
                    CustomListTile(articles[index],context)
                  ,
                  itemCount: articles.length,
              );
            }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

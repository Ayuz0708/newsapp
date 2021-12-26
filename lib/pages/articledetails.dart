import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
class Articlepage extends StatelessWidget {
final Article article;

  const Articlepage({Key key, this.article}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(article.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(article.urlToImage),

                  ),
                  borderRadius: BorderRadius.circular(8.0)
              ),
            ),
            SizedBox(height: 8.0,),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: Text(article.source.name,style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 8.0,),
            Text(article.description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

          ],
        ),
      ),
    );
  }
}

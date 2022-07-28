import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/detils1.dart';
import 'package:http/http.dart' as http;

class Api1 extends StatefulWidget {
  const Api1({Key? key}) : super(key: key);
  @override
  State<Api1> createState() => _Api1State();
}

class _Api1State extends State<Api1> {
//! --------------------------------------------
  Future<List> importData()async{
    const url="https://myjson.dit.upm.es/api/bins/d8ba";//"https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      List<dynamic> data=jsonDecode(response.body);
      /*print((response.body).runtimeType);
      print(response.body);
      print((jsonDecode(response.body)).runtimeType);
      print(jsonDecode(response.body));
      print(data[0]['title']);*/
      return data;
    }else{
      throw Exception('error');
    }
    
  }
//! --------------------------------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    importData();
  }
//! --------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title:const Text("API....."),
      ),
      body:FutureBuilder(
        future: importData(),
        builder:(context, AsyncSnapshot<List> snapshot){
          if(snapshot.hasData){
            List<dynamic>? list = snapshot.data;
                      
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 7 / 8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: list?.length,
              
              itemBuilder: (BuildContext ctx, index) {

                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dtails( title: '${list![index]['name']}',lis:list[index]) ));
                  },
                  child: Stack(                  
                    children: [
                      ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: NetworkImage(list![index]['image_link']),//list![index]['imageLink']
                    height: 250,
                    fit: BoxFit.cover,
                  )),
                      Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    list![index]['name'],
                    style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
                  ))
                    ],
                    
                  ),
                );
              }),
            );
          }else{
           return const Center(child: CircularProgressIndicator());
          }
        }),
        );
  }
}
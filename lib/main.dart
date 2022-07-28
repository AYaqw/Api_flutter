import 'package:flutter/material.dart';
// import 'package:flutter_application_1/api1.dart';
// import './api2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home:const Center(child: Text("Main page")), //Api1(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  fetachData()async{
  print("Start");
  //! 1- URL ...............................................
  const url="https://myjson.dit.upm.es/api/bins/d8ba";
  //! 2- Use http to res >>> -your req by http
  http.Response response = await http.get(Uri.parse(url));//? ->> parse use to convert String(in file json) To Json  // print(response.body);
  // print(response);
  //! 3- Use Data from res
  if(response.statusCode==200){
    Future<List<String>>? data;
    data=jsonDecode(response.body);
    //  print(data[0]['name'] );
    return data ;
  }else{
    throw Exception('error');
  }
  // print("end");

}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetachData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title:const Text("API....."),
      ),
      body:FutureBuilder(
        future: fetachData(),
        builder:(context, AsyncSnapshot<List> snapshot){
          if(snapshot.hasData){
            List? list = snapshot.data;

            return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 7 / 8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            // itemCount: myProducts.length,
            
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(list![index]["name"]),
              );
            });

          }else{
           return Center(child: CircularProgressIndicator());
          }
        }),
      /* GridView(
        padding:const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 10,
        childAspectRatio: 7/8,
        mainAxisSpacing: 10),
        children: [
          Container(
          color: Colors.amberAccent,
          child:const Text('1'),),
          Container(
          color: Colors.deepOrange,
          child:const Text('2'),),Container(
          color: Colors.cyan,
          child:const Text('3'),),Container(
          color: Colors.deepPurple,
          child:const Text('4'),),Container(
          color: Colors.greenAccent,
          child:const Text('5'),),Container(
          color: Colors.redAccent,
          child:const Text('6'),),
          ]
        ),*/
      
    );
;
  }
}*/

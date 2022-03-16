import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(child: Column(
          children: [
            Row(children: [Expanded(child: Image.asset("assets/images/img.png"))],),

        Center(child: Padding(
        padding: EdgeInsets.only(top: 40, bottom:0, left:40, right:40),
          child:
          Row(children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Общежитие №20", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                            Text("Краснодар, ул. Калинина, 13", style: TextStyle(fontSize: 18, color: Colors.grey, height: 2))],),

                          Padding(padding: EdgeInsets.only(top: 0, bottom:0, left:30, right:0),
                            child: Row(children: [
                            Icon(Icons.favorite, color: Colors.red),
                            Text("25", style: TextStyle(fontSize: 18))])),
                        ],),)),
            Center(child: Padding(padding: EdgeInsets.only(top:25, left:10, right:10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  Column(children: [Icon(Icons.phone, color: Colors.green, size: 30), Text("Позвонить", style: TextStyle(fontSize: 18, color: Colors.green))]),
                  Column(children: [Icon(Icons.alt_route, color: Colors.green, size: 30), Text("Маршрут", style: TextStyle(fontSize: 18, color: Colors.green))]),
                  Column(children: [Icon(Icons.share, color: Colors.green, size: 30), Text("Поделиться", style: TextStyle(fontSize: 18, color: Colors.green),)])
                  ],))),
            const Center(child: Padding(padding: EdgeInsets.only(top:30, left:25, right:25),
                child: Text("Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати "
                              "общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех "
                              "нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В "
                              "соответствии с Положением о студенческих общежитиях университета, при поселении "
                              "между администрацией и студентами заключается договор найма жилого помещения. "
                              "Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил "
                              "внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия "
                              "проживания в общежитиях университетского кампуса полностью отвечают санитарным "
                              "нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, "
                              "читальных залов, комнат самоподготовки, помещений для заседаний студенческих "
                              "советов и наглядной агитации. С целью улучшения условий быта студентов активно "
                              "работает система студенческого самоуправления - студенческие советы организуют всю "
                              "работу по самообслуживанию.", style: TextStyle(fontSize: 19), textAlign: TextAlign.start,)),)
          ]
        )
        )
      )
    );
  }
}


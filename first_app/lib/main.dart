
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create:(context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FirtsApp',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
        ),
        home: MyHomepage(),
      ),
   
    );
  }
}

// Clase MyAppState
class MyAppState extends ChangeNotifier{
  var current = WordPair.random();

  void getChangeWord() {
    current = WordPair.random();
      notifyListeners();   
  }
  
  void getTranstaleWord() {
    print(current);
  }
  
 
} 

class MyHomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: Color.fromARGB(255, 54, 105, 214),
      title: (Title(color:  Colors.white
      , child: Text('Generate Word' , style: TextStyle(fontSize:32 , fontWeight: FontWeight.w900 , color: Colors.white54),))),),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Center(
          child: Column(children: [
            Text('A Random Word', style: TextStyle(fontSize: 30
            ),),
            SizedBox(height: 5),
            Text(appState.current.asSnakeCase, style: TextStyle(fontSize: 65, 
            foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4
            ..color= Color.fromARGB(255, 54, 105, 214)),),
            SizedBox(height: 30),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                 ElevatedButton(onPressed: () => {
                appState.getChangeWord(),
              },  child: Text('Change')
                    ),
                      SizedBox(width: 30),
                     ElevatedButton(onPressed: () => {
                appState.getTranstaleWord(),
              },  child: Text('Traslate')
                    ),
              ]
                       )]),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_beachup/screens/club_list_screen.dart';

void main() {
  runApp(const MyApp());
}

// <!--( StatelessWidget )--> Cria widgets SEM estado mutável. Ideal para telas estáticas, componentes fixos e layouts sem alteração dinâmica
class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    // <!--( MaterialApp )-->  É o widget principal de aplicativos Flutter usando Material Design. 
    //(Define o tema, a tela inicial. Gerencia navegação. Controla idioma, rotas e estilos globais)
    return MaterialApp( 
      title: 'Flutter Demo',
      theme: ThemeData( // <!--( ThemeData )--> Define o tema visual do aplicativo.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:ClubListScreen(),
    );
  }
}
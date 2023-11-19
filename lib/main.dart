import 'package:flutter/material.dart';
import 'package:peliculas_demo_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp recibe parametros, por que es la instancia de un constructor.
    return MaterialApp(
      // Configurando las propiedades de MaterialApp

      // DebugShowcheckedModeBanner, desactiva el banner de modo de depuracion
      debugShowCheckedModeBanner: false,

      // Para identificar la aplicacion en el gestor de tareas.
      title: 'Peliculas',

      // Especifica la primera ruta que se muestra cuando la aplicacion se lanza
      initialRoute: 'home',

      // Define las rutas de navegacion y los widgets que deben de construirse
      // cuando se navega a esas rutas.
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetaeilsScreen(),
      },

      // Establece el tema visual global para la aplicacion.
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:peliculas_demo_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold es un Widget  de diseno, estructura basica de pantalla y
    // comportamientos comunes  como para AppBar, body, floating, action buttons
    return Scaffold(

        // Define una app para la pantalla
        appBar: AppBar(
          // Define el titulo del AppBar
          title: const Text('Peliculas en cines'),

          // Elimina la sombra debajo del App Bar
          elevation: 0,
          // Anade un boton de accion en el App Bar
          actions: [
            // En este caso se anade el boton de busqueda
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined))
          ],
        ),

        // Proporciona desplazamiento (scrolling) a su widget hijo.
        body: const SingleChildScrollView(
          child: Column(
            children: [
              //TODO: CardSwiper

              // Tarjetas principales
              CardSwiper(),

              // Listado horizontal de peliculas
              MovieSlider(),
              MovieSlider(),
              MovieSlider(),
              MovieSlider(),
            ],
          ),
        ));
  }
}

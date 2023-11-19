import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // double.infinity permite tomar todo el ancho posible de la columna
      width: double.infinity,

      // depende el tamano del dispositivo, tambien se puede tomar en %
      height: size.height * 0.5,

      // El container toma un color rojo

      // Aqui se esta usando la dependencia flutter_card_swiper 6.0.0
      // Widget Swiper,
      child: Swiper(
        itemBuilder: (_, int index) {
          // Muestra la imagen del carrusel mientras carga y cuando ya cargo.

          // Permite detectar varios tipos de gestos tactiles como toques,
          // dobles toques, deslizamientos (swiper), arrastres (drags), pellizcos
          // (pinches), etc.
          return GestureDetector(
            // onTap define la accion que se realizara cuando se detecte un toque
            // Navigator.pushNamed permite navegar a otra pantalla cuanto detecta
            // un toque (tap)
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: 'movie-instance'),
            child: ClipRRect(
              // Le da un borde redondo al FadeImage
              borderRadius: BorderRadius.circular(20),

              // en Flutter es un widget que proporciona una forma elegante de
              // cargar y mostrar imagenes con un efecto de "desvanecimiento" (fade-in)
              child: const FadeInImage(
                // placeholder: especifica la imagen de marcador de posicion, mientras - Prueba
                // placeholder: NetworkImage('https://via.placeholder.com/300x400'),
                // define la imagen que se muestra mientras carga.
                placeholder: AssetImage('assets/no-image.jpg'),

                // image: Define la imagen principal que se cargara y se mostrara
                image: NetworkImage('https://via.placeholder.com/300x400'),

                // Hace que el FadeImage se adapte a la propiedade de BorderRadius
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        // Define el numero total de elementos en el carrusel.
        itemCount: 10,

        // Establece el diseno del carrusel.
        layout: SwiperLayout.STACK,

        // establece el ancho de cada elemento en el carrusel
        itemWidth: size.width * 0.6,

        // Define laa altura de cada elemento
        itemHeight: size.height * 0.4,
      ),
    );
  }
}

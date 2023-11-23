import 'package:flutter/material.dart';

class DetaeilsScreen extends StatelessWidget {
  const DetaeilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return const Scaffold(
        body: CustomScrollView(
      slivers: [_CustomAppBar()],
    ));
  }
}
//--------------------------------------------------------------------------//
// CONFIGURACION DEL APPBAR                                                 //
//--------------------------------------------------------------------------//
class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('Movie.title'),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });  
}

const appMenuItems = <MenuItem>[

    MenuItem(
    title: 'Counter Riverpod', 
    subTitle: 'Counter Screen Riverpod Example', 
    link: '/counter-riverpod', 
    icon: Icons.plus_one_outlined
  ),
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'ProgressIndicators', 
    subTitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'Snackbars y dialogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated container', 
    subTitle: 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItem(
    title: 'Controls Designs + titles', 
    subTitle: 'Una serie de controles en Flutter', 
    link: '/ui-controls', 
    icon: Icons.ac_unit_sharp
  ),
  MenuItem(
    title: 'Pantalla Tutorial', 
    subTitle: 'Video introductorio', 
    link: '/tutorial', 
    icon: Icons.play_arrow_outlined
  ),
  MenuItem(
    title: 'Scrroll Infinito', 
    subTitle: 'Infinite Scroll y Pull', 
    link: '/infinite-scroll', 
    icon: Icons.image
  ),
  MenuItem(
    title: 'Cambiar Tema', 
    subTitle: 'Cambiar tema de la aplicacion', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),
];
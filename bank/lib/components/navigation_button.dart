import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String name;
  final Color color;
  final String route;

  const NavigationButton(
      {Key? key,
      required this.name,
      this.color = Colors.purple,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(name),
      ),
    );
  }
}

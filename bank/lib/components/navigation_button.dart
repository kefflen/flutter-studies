import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String name;
  final Color color;
  final String route;
  final IconData icon;

  const NavigationButton(
      {Key? key,
      required this.name,
      this.color = Colors.purple,
      required this.route, required this.icon})
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
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Icon(
                icon,
                color: Colors.white.withOpacity(0.7),
                size: 68,
              ),
            )
          ],
        ),
      ),
    );
  }
}

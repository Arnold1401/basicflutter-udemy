import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:learn01/router/app_router.gr.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: const <Widget>[Icon(Icons.account_balance)],
      ),
      body: Container(
        color: Colors.green,
        margin: const EdgeInsets.fromLTRB(12, 20, 10, 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text("data"),
            TextButton(
                child: const Text("data"),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => DashboardPage(title: "Detail")));

                  context.router.push(DashboardRoute(title: "test"));
                }),
            const Row(
              children: [Text("TEst1"), Text("TEst2")],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconWithLabel(
                  icon: Icons.call,
                  text: "Call",
                ),
                IconWithLabel(
                  icon: Icons.call,
                  text: "Route",
                ),
                IconWithLabel(
                  icon: Icons.call,
                  text: "Call",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(icon), Text(text)],
    );
  }
}

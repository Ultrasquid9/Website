import 'package:flutter/material.dart';
import 'package:website/main.dart';

class Home extends StatefulWidget {
	const Home({super.key, required this.title});

	final String title;
	@override State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override Widget build(BuildContext context) {
		return Scaffold(
			appBar: getBar(),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						Text("data", style: getTextStyle())
					],	
				)
			)
		);
	}
}

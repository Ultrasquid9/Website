import 'package:flutter/material.dart';
import 'package:website/main.dart';

class Credits extends StatefulWidget {
	const Credits({super.key, required this.title});

	final String title;
	@override State<Credits> createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
	@override Widget build(BuildContext context) {
		return Scaffold(
			appBar: getBar(context),
			body: const Center(
				child:Card(
					color: Color.fromARGB(255, 48, 52, 70),
				)
			)
		);
	}
}

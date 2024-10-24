import 'package:flutter/material.dart';

class Credits extends StatefulWidget {
	const Credits({super.key, required this.title});

	final String title;
	@override State<Credits> createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
	@override Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: const Color.fromARGB(255, 202, 158, 230),
				title: Text(widget.title),
			),
			body: const Center(
				child:Card(
					color: Color.fromARGB(255, 48, 52, 70),
				)
			)
		);
	}
}

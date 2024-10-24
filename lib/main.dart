import 'package:flutter/material.dart';
import 'package:website/credits.dart';

void main() {
	runApp(const Website());
}

class Website extends StatelessWidget {
	const Website({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			theme: ThemeData(
				useMaterial3: true,

				scaffoldBackgroundColor: const Color.fromARGB(255, 48, 52, 70)
			),

			title: "Website",
			home: const Credits(title: 'Inkblot Games')
		);
	}
}

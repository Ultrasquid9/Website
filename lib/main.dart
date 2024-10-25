import 'package:flutter/material.dart';
import 'package:website/home.dart';

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

				scaffoldBackgroundColor: const Color.fromARGB(255, 48, 52, 70),
			),

			title: "Website",
			home: const Home(title: 'Inkblot Games')
		);
	}
}

/// Gets the style for text
TextStyle getTextStyle() {
	return const TextStyle(
		color: Color.fromARGB(255, 198, 208, 245),
	);
}

/// Gets the style for large text, like the "Inkblot Games" text in the corner
TextStyle getHeaderTextStyle() {
	return const TextStyle(
		color: Color.fromARGB(255, 165, 173, 206),
	);
}

/// Gets the style for buttons
ButtonStyle getButtonStyle() {
	return ElevatedButton.styleFrom(
		backgroundColor: const Color.fromARGB(255, 41, 44, 60),
	);
}

/// Gets the navigation bar at the top of the website
AppBar getBar() {
	return AppBar(
		backgroundColor: const Color.fromARGB(255, 35, 38, 52),
		title: Text("Inkblot Games", style: getTextStyle()),
		actions: <Widget>[
			ElevatedButton(
				onPressed: () {
					print("button pressed");
				},
				 
				style: getButtonStyle(),
				child: Text("Gay", style: getTextStyle())
			)
		],
	);
}

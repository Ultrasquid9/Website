import 'package:flutter/material.dart';
import 'package:website/credits.dart';
import 'package:website/home.dart';
import 'package:go_router/go_router.dart';

void main() {
	runApp(const Website());
}

class Website extends StatelessWidget {
	const Website({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp.router(
			title: "inkblot Games",

			theme: ThemeData(
				useMaterial3: true,

				scaffoldBackgroundColor: const Color.fromARGB(255, 48, 52, 70),
			),

			routerConfig: _router,
		);
	}
}

final _router = GoRouter(
	initialLocation: '/',

	routes: [
		GoRoute(
			path: '/',
			builder: (context, state) => const Home(title: "Home")
		),
		GoRoute(
			path: '/credits',
			builder: (context, state) => const Credits(title: "Credits")
		)
	]
);

/// Gets the style for text
TextStyle getTextStyle() {
	return const TextStyle(
		color: Color.fromARGB(255, 198, 208, 245),
	);
}

/// Creates a button
ElevatedButton createButton(VoidCallback onPressed, BuildContext context, String title) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
		    backgroundColor: const Color.fromARGB(255, 41, 44, 60),
	    ),
        onPressed: onPressed,
        child: Text(title, style: getTextStyle())
    );
}

/// Gets the navigation bar at the top of the website
AppBar getBar(BuildContext context) {
	return AppBar(
		backgroundColor: const Color.fromARGB(255, 35, 38, 52),
		title: Text("Inkblot Games", style: getTextStyle()),
		actions: <Widget>[
            createButton(
                () => context.go("/"), 
                context,
                "Home"
            ),
            createButton(
                () => context.go("/credits"), 
                context, 
                "Credits"
            )
		],
	);
}

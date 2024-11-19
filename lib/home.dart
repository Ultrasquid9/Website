import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Home extends StatefulWidget {
	const Home({super.key, required this.title});

	final String title;
	@override State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
                createTitle("Welcome to the Celeste Transgender Website!"),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 300),
                    child: CarouselView(
                        itemExtent: 400, 
                        shrinkExtent: 200,
                        children: [
                            Image.network("https://maddymakesgames.com/articles/is_maddy_trans/images/header.webp", fit: BoxFit.cover),
                            Image.network("https://maddymakesgames.com/articles/is_maddy_trans/images/farewell.webp", fit: BoxFit.cover),
                            Image.network("https://maddymakesgames.com/articles/is_maddy_trans/images/call.webp", fit: BoxFit.cover),
                            Image.network("https://maddymakesgames.com/articles/is_maddy_trans/images/selfieB.webp", fit: BoxFit.cover),
                            Image.network("https://maddymakesgames.com/articles/is_maddy_trans/images/trans.webp", fit: BoxFit.cover)
                        ]
                    ),
                ),
				SelectableText(
					text(), 
					style: getTextStyle(),
				)
			]
		);
	}
}

String text() {
	return 
    "\n\n"
    "Celeste is a game which is pretty heavily tied to transgender experiences. "
    "Its story is all about mental health, self-acceptance, and overcoming obstacles "
    "in life, and was written from the perspective of a trans woman who, at the "
    "time, was grappling with her own gender identity [insert citation here]."
    "\n\n"
    "The Celeste Transgender website is a website dedicated to showcasing how the "
    "video game Celeste can be read from a transgender point of view. It showcases "
    "various trans experiences and how they relate to Celeste, as well as words "
    "from the author herself detailing her own experiences with being transgender."
    "\n\n"
    "Use the tabs at thetop of the website to see the various pages! Each one "
    "covers a different aspect of the game and/or its creation and how it relates "
    "to transgender experiences."
    "";
}

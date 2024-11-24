import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Background extends StatefulWidget {
	const Background({super.key, required this.title});

	final String title;
	@override State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
				createTitle("Background"),
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
	"Celeste was written by Maddy Thorson, a transgender woman. As she stated on her blog, while she did not know that she "
	"was transgender while writing the game, the game was written from a trans perspective, and as such includes transgender themes."
	"";
}

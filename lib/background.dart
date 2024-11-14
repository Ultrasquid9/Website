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
				SelectableText(
					"background", 
					style: getTextStyle(),
				)
			]
		);
	}
}

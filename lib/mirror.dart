import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Mirror extends StatefulWidget {
	const Mirror({super.key, required this.title});

	final String title;
	@override State<Mirror> createState() => _MirrorState();
}

class _MirrorState extends State<Mirror> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
				SelectableText(
					"mirror", 
					style: getTextStyle(),
				)
			]
		);
	}
}

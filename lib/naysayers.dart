import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Naysayers extends StatefulWidget {
	const Naysayers({super.key, required this.title});

	final String title;
	@override State<Naysayers> createState() => _NaysayersState();
}

class _NaysayersState extends State<Naysayers> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
				SelectableText(
					"naysayers", 
					style: getTextStyle(),
				)
			]
		);
	}
}

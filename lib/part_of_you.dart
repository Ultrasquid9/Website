import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class PartOfYou extends StatefulWidget {
	const PartOfYou({super.key, required this.title});

	final String title;
	@override State<PartOfYou> createState() => _PartOfYouState();
}

class _PartOfYouState extends State<PartOfYou> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
				createTitle("Part Of You"),
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
	"The main antagonist of Celeste, named “Part of You”, is a reflection of Madeline who emerges from a mirror, and represents her "
	"mental health struggles (particularly anxiety and depression). However, this Part of Her also is a form of symbolism "
	"for transness, and learning self-acceptance. This can be seen in the game’s 6th chapter, where Madeline mistakenly "
	"believes that she has “moved on” from her struggles and attempts to destroy that Part of Herself, but only ends up "
	"falling deeper than ever before. The only way she is able to recover is by working together with that Part of Her, and "
	"accepting that that is indeed an aspect of who she is. This mirrors how internalized transphobia can operate in real "
	"life – as stated by a study on Internalized Transnegativity, internalized transphobia is one of the leading causes of "
	"mental issues in trans people, in the same way that Madeline’s repression of her transness caused her to fall even lower "
	"than she started."
	"";
}

# TMPro Support

Fungus has some specific support and uses of TextMeshPro. The Fungus Writer and Menu, and anything else that uses the TextAdapter can target a TextMeshPro component instead of a uGUI one. Meaning you can replace the text elements in the Menu items and in Say Dialogs.

<!-- **************************************************** -->
# Animated Text

TextMeshPro has link support, meaning it can tell you which characters are contained within a link block and what that link refers to. Building on top of this is one of the recommended ways of creating animated text in TMPro. Fungus has some basic system for this and some built-in effects to use. See the the TMPro Link Default Effects scene. The default link types are detailed in the sample scene and the text below.
```
<link="shake">shake, shake, shake, sure</link>
<link="wiggle">wiggle, wiggle, wiggle, yeah</link>
<link="wave">wave, wave, wave, alright</link>
<link="pivot">pivot, pivot, pivot, OK</link>
<link="rainbow">rainbow!</link>
<link="ascend">going up</link>
<link="pulse"><color=#bbee22>Glowing</color></link>
```

This will work correctly on non Fungus objects in your project too.

To use links in the writer you will need to use the usual fungus tagging. 


<!-- **************************************************** -->
# Extending Animated Text

The text animation system is intended to be extended with your own effects for your own links. For an example see the TMPro Link Effects Custom scene and the TMProLinkStylingDemo script. It removes the default effects and adds its own. These use the existing helpers for animating elements by character, word, line and so forth, and can use translate, rotate, scale, and colour tinting.

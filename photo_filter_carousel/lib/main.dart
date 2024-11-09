import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // Untuk ViewportOffset
import 'dart:math' as math; // Untuk math max dan min

import 'widget/filter_carousel.dart'; // Untuk widget carousel
import 'widget/filter_selector.dart'; // Untuk selector filter
import 'widget/carousel_flowdelegate.dart'; // Untuk flow delegate
import 'widget/filter_item.dart'; // Untuk item filter

void main() {
  runApp(
    const MaterialApp(
      home: PhotoFilterCarousel(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

// Copyright 2020 Michel Feinstein. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library text_theme_extensions;

import 'package:flutter/material.dart';

// Leaving this out as static methods on Classes aren't supported.
// extension TextThemeFinder on TextTheme {
//   static TextTheme of(BuildContext context, {bool shadowThemeOnly = false}) {
//     return Theme.of(context, shadowThemeOnly: shadowThemeOnly).textTheme;
//   }
// }

extension BuildContextTextThemeFinder on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

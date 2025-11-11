// Copyright 2020 Michel Feinstein. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library text_theme_extensions;

import 'package:flutter/material.dart';

extension TextThemeFinder on TextTheme {
  static TextTheme of(BuildContext context) {
    return Theme.of(context).textTheme;
  }
}

extension BuildContextTextThemeFinder on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

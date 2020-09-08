// Copyright 2020 Michel Feinstein. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:text_theme_extensions/text_theme_extensions.dart';

void main() {
  testWidgets('TextTheme is being returned', (WidgetTester tester) async {
    bool result = false;
    var callback = (BuildContext context) {
      return result = Theme.of(context).textTheme == context.textTheme;
    };

    var testWidget = TestApp(callback);
    await tester.pumpWidget(testWidget);

    expect(result, isTrue);
  });
}

typedef BuildContextCallback = void Function(BuildContext context);

class TestApp extends StatelessWidget {
  TestApp(this.callback) : assert(callback != null);

  final BuildContextCallback callback;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FakeApp',
      routes: {
        '/': (context) => TestWidget(callback),
      },
    );
  }
}

class TestWidget extends StatefulWidget {
  TestWidget(this.callback) : assert(callback != null);

  final BuildContextCallback callback;

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    widget.callback(context);
    return Container();
  }
}

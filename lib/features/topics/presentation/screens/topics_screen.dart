import 'package:flutter/material.dart';
import '../../../language/presentation/widgets/language_button.dart';
import '../widgets/topics_grid.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LanguageButton(),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            TopicsGrid(),
          ],
        ),
      ),
    );
  }
}

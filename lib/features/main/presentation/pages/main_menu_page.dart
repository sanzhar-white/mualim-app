import 'package:flutter/material.dart';
import 'package:mualim/generated/l10n.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;

  void _onTapSettings() {
    print('Settings tapped');
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            title: Text(
              s.mualim,
              style: TextStyle(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            centerTitle: true,
            floating: true,
            snap: true,
            actions: [
              GestureDetector(
                onTap: _onTapSettings,
                child: Container(
                  margin: EdgeInsets.only(right: screenSize.width * 0.03),
                  width: screenSize.width * 0.07,
                  height: screenSize.width * 0.07,
                  child: Image.asset(
                    'assets/images/icons/settings.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),

          // Profile section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 12,
                bottom: 32,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: screenSize.width * 0.16,
                    backgroundImage: AssetImage(
                      'assets/images/avatar_placeholder.png',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Omar',
                        style: TextStyle(
                          color: colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Beginner',
                        style: TextStyle(
                          color: colorScheme.secondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Stats section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _StatCard(title: s.current_streak, value: '3🔥'),
                  _StatCard(title: s.lessons_completed, value: '12'),
                ],
              ),
            ),
          ),

          // Continue Practice title
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
              child: Text(
                s.continue_practice,
                style: TextStyle(
                  color: colorScheme.onBackground,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
          ),

          // Continue Practice horizontal list
          SliverToBoxAdapter(
            child: SizedBox(
              height: screenSize.width * 0.55,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _LessonCard(title: 'Lesson 1', subtitle: 'Introduction'),
                  _LessonCard(title: 'Lesson 2', subtitle: 'Alphabet'),
                  _LessonCard(title: 'Lesson 3', subtitle: 'Phrases'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primaryContainer,
            offset: Offset(0, 0),
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _LessonCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const _LessonCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/mualim_logo.png',
                fit: BoxFit.contain,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  offset: Offset(0, 0),
                  spreadRadius: 2,
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

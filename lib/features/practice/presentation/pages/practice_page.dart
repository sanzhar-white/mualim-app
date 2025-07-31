import 'package:flutter/material.dart';
import 'package:mualim/generated/l10n.dart';

class PracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: colorScheme.background,
            elevation: 0,
            automaticallyImplyLeading:
                false, // убрано отображение стрелки назад
            title: Text(
              s.practice,
              style: TextStyle(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            centerTitle: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  s.lessons,
                  style: TextStyle(
                    color: colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 12),
                _buildLessonItem(s.alphabet, s.alphabet_des, context),
                _buildLessonItem(s.harakats, s.harakats_des, context),
                _buildLessonItem(s.words, s.words_des, context),
                _buildLessonItem(s.phrases, s.phrases_des, context),
                SizedBox(height: 32),
                Text(
                  s.practice_ai,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 12),
                _buildComingSoonItem(s.chat_ai, s.learn_taj, context),
                SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonItem(String title, String subtitle, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: colorScheme.onBackground.withOpacity(0.02),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          width: screenSize.width * 0.12,
          height: screenSize.width * 0.12,
          child: Image.asset('assets/images/icons/book.png', scale: 3),
          decoration: BoxDecoration(
            color: colorScheme.secondary.withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        title: Text(title, style: textTheme.bodyLarge),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: colorScheme.secondary),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: () {
          // Обработка нажатия
        },
      ),
    );
  }

  Widget _buildComingSoonItem(
    String title,
    String subtitle,
    BuildContext context,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFFF6F8F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          width: screenSize.width * 0.12,
          height: screenSize.width * 0.12,
          child: Image.asset(
            'assets/images/icons/chat.png',
            scale: 3,
            color: colorScheme.onBackground.withOpacity(0.3),
          ),
          decoration: BoxDecoration(
            color: colorScheme.secondary.withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),

        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
        ),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        enabled: false,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    
    // final clickTheme = ref.watch( themeProvider );
    final clickTheme = ref.watch( themeNotifierProvider ).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon:  clickTheme
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined)
            ,
            onPressed: () {
              // ref.read(themeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            }, 
          ),
        ],
      ),
      body: _ThemeChangerView(),
      
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int selectdColor = ref.watch( themeNotifierProvider ).selectedColor;
    // final int selectdColor = ref.watch(selectdColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        
        return RadioListTile(
          title: Text('Este color', style: TextStyle( color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectdColor, 
          onChanged: (value) {
            // ref.read(selectdColorProvider.notifier).update((state) => state = index);
            ref.watch( themeNotifierProvider.notifier).changerColorIndex(index);
          }
        );
      }
    );
  }
}
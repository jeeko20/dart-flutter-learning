import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({super.key});

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  final List<String> _categories = ['Tout', 'Legim', 'Fwi', 'Sereyal', 'Viv', 'Epis'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = _selectedIndex == index;
          return ChoiceChip(
            label: Text(_categories[index]),
            selected: isSelected,
            onSelected: (selected) {
              setState(() => _selectedIndex = index);
            },
            selectedColor: AppColors.primaryContainer,
            labelStyle: TextStyle(
              color: isSelected ? Colors.white : AppColors.primaryContainer,
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test1/src/features/home/data/home_data.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryItem> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const separatorWidth = 12.0;
        final visibleItems = constraints.maxWidth >= 900
            ? 4
            : constraints.maxWidth >= 700
            ? 3
            : 2;
        final listWidth = constraints.maxWidth * 0.5;
        final itemWidth =
            (listWidth - (visibleItems - 1) * separatorWidth) / visibleItems;
        final minWidth = 120.0;

        return SizedBox(
          width: listWidth,
          height: 120,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (_, _) => const SizedBox(width: separatorWidth),
            itemBuilder: (context, index) {
              final category = categories[index];
              return Container(
                width: itemWidth.clamp(minWidth, 220.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF101826),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF151D2B),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(category.icon, color: Colors.white, size: 24),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      category.label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
        ),
        );
      },
    );
  }
}

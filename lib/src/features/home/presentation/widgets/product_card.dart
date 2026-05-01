import 'package:flutter/material.dart';

import '../../domain/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool compact;
  final bool offer;

  const ProductCard({
    super.key,
    required this.product,
    this.compact = false,
    this.offer = false,
  });

  @override
  Widget build(BuildContext context) {
    final isCamera = product.name.toLowerCase().contains('caméra');

    return Container(
      width: compact ? 174 : null,
      decoration: BoxDecoration(
        color: const Color(0xFF101826),
        borderRadius: BorderRadius.circular(24),
        border: isCamera ? Border.all(color: const Color(0xFFFFD166), width: 1.5) : null,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _BadgeChip(
                label: product.discount ?? product.badge,
                color: product.discount != null ? const Color(0xFFB91C1C) : const Color(0xFF3B82F6),
              ),
              const Spacer(),
              if (offer)
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFF121A2A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.favorite_border, color: Colors.white54, size: 18),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: compact ? 104 : 130,
            decoration: BoxDecoration(
              color: const Color(0xFF121C2D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                product.imageAsset,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            product.name,
            maxLines: compact ? 2 : 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isCamera ? FontWeight.w800 : FontWeight.w700,
              fontSize: compact ? 14 : 15,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            product.category.toUpperCase(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 11,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          if (product.rating != null)
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Color(0xFFFFD166)),
                const SizedBox(width: 4),
                Text(
                  product.rating!,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.price,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: compact ? 16 : 18,
                    ),
                  ),
                  if (product.discount != null)
                    Text(
                      'Prix réduit',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 11,
                      ),
                    ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF121A2A),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _BadgeChip extends StatelessWidget {
  final String label;
  final Color color;

  const _BadgeChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

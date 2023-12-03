import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CoffeeCardSkeleton extends StatelessWidget {
  const CoffeeCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 50.0, // Sesuaikan dengan lebar gambar sebenarnya
          height: 80.0, // Sesuaikan dengan tinggi gambar sebenarnya
          color: Colors.white,
        ),
      ),
      title: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 120.0, // Sesuaikan dengan lebar nama sebenarnya
          height: 16.0,
          color: Colors.white,
        ),
      ),
      subtitle: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 200.0, // Sesuaikan dengan lebar deskripsi sebenarnya
          height: 12.0,
          color: Colors.white,
        ),
      ),
      trailing: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: 50.0, // Sesuaikan dengan lebar harga sebenarnya
          height: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

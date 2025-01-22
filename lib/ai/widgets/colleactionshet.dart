import 'package:flutter/material.dart';

class CollectionBottomSheet extends StatelessWidget {
  const CollectionBottomSheet({super.key});
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => const CollectionBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'কালেকশন তৈরি করুন',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'কালেকশন নাম',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF535353),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'উদাহরণ...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'ফোল্ডার রঙ নির্বাচন করুন',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF535353),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _buildColorCircle(Colors.green),
              _buildColorCircle(Colors.blue.shade300),
              _buildColorCircle(Colors.lightBlue),
              _buildColorCircle(Colors.teal),
              _buildColorCircle(Colors.lightGreen),
              _buildColorCircle(Colors.yellow.shade200),
              _buildColorCircle(Colors.orange),
              _buildColorCircle(Colors.deepOrange.shade200),
              _buildColorCircle(Colors.purple.shade200),
              _buildColorCircle(Colors.pink.shade200),
              _buildColorCircle(Colors.red.shade200, isSelected: true),
              _buildColorCircle(Colors.brown.shade200),
              _buildColorCircle(Colors.blueGrey),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'ফোল্ডার টাইপ সিলেক্ট করুন',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF535353),
            ),
          ),
          const SizedBox(height: 16),
          _buildTypeOption(
            isSelected: true,
            icon: Icons.bookmark,
            title: 'বুকমার্ক',
            subtitle: 'হাদিস বুকমার্ক করুন',
            iconColor: Colors.teal,
          ),
          const SizedBox(height: 12),
          _buildTypeOption(
            isSelected: false,
            icon: Icons.push_pin,
            title: 'পিন',
            subtitle: 'হাদিস পিন করুন',
            iconColor: Colors.red.shade200,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'বাতিল',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'ঠিক আছে',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildColorCircle(Color color, {bool isSelected = false}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.teal : Colors.transparent,
          width: 2,
        ),
      ),
      child: isSelected
          ? const Icon(
              Icons.check,
              color: Colors.white,
              size: 20,
            )
          : null,
    );
  }

  Widget _buildTypeOption({
    required bool isSelected,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.teal : Colors.grey.shade300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          if (isSelected)
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              ),
            ),
        ],
      ),
    );
  }
}

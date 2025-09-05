// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import '../widgets/info_header.dart';
import '../widgets/summary_card.dart';
import '../widgets/action_buttons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const InfoHeader(),
              const SizedBox(height: 24),

              // Withdrawal Period Card
              SummaryCard(
                icon: Icons.hourglass_top_outlined,
                title: 'Withdrawal Period',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('5 animals in withdrawal  |  1 overdue'),
                    Text('View Details >', style: TextStyle(color: Colors.blue.shade700)),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // MRL Status Card
              SummaryCard(
                icon: Icons.shield_outlined,
                title: 'MRL Status',
                cardColor: Colors.green.shade50,
                iconColor: Colors.green.shade800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('94% Safe  |  6% Unsafe  |  3 Products'),
                    Text('View Details >', style: TextStyle(color: Colors.blue.shade700)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              
              // Vet Status Card
              SummaryCard(
                icon: Icons.medical_information_outlined,
                title: 'Vet Status',
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Last contact: Dr. Sharma (2d ago)'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.mail_outline, color: Colors.blue.shade700, size: 20),
                        const SizedBox(width: 8),
                        Text('New Msg', style: TextStyle(color: Colors.blue.shade700)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Recent Activity Card
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Recent Activity', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                      const SizedBox(height: 12),
                      _buildActivityItem('Cow #12 added'),
                      const Divider(),
                      _buildActivityItem('New alert received'),
                      const Divider(),
                      _buildActivityItem('Lab test submitted'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Action Buttons at the bottom
              const ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for a single line of recent activity
  Widget _buildActivityItem(String activity) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Text(activity),
        ],
      ),
    );
  }
}
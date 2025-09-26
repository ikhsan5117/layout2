import 'package:flutter/material.dart';

void main() => runApp(const Tugas2());

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training UI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F5F7),
        fontFamily: 'Roboto',
      ),
      home: const TrainingHome(),
    );
  }
}

class TrainingHome extends StatelessWidget {
  const TrainingHome({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 18),
              const Text('Your Program', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),

              // Purple rounded card - Next Workout
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF9B6BFF), Color(0xFFBD7BFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: [
                    // Texts
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Next Workout', style: TextStyle(color: Colors.white70)),
                          SizedBox(height: 6),
                          Text('Lets Toning\nand Glutes Workout', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Icon(Icons.timer, color: Colors.white70, size: 16),
                              SizedBox(width: 6),
                              Text('60 min', style: TextStyle(color: Colors.white70)),
                            ],
                          )
                        ],
                      ),
                    ),

                    // Play button
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.play_arrow, color: Color(0xFF7A39FF)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Small encouraging card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 8, offset: const Offset(0, 4))],
                ),
                child: Row(
                  children: [
                    // Illustration placeholder
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [Color(0xFFE8EEFF), Color(0xFFF6F3FF)]),
                      ),
                      child: const Icon(Icons.directions_run, size: 28, color: Color(0xFF6C63FF)),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You are doing great', style: TextStyle(fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          Text('keep it up\nstick to your plan', style: TextStyle(color: Colors.black54, fontSize: 12)),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: Colors.black26),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Text('Area of Focus', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),

              // two focus icons
              Row(
                children: [
                  _focusItem(icon: Icons.fitness_center, label: 'Legs', width: (w - 36) / 2 - 8),
                  const SizedBox(width: 12),
                  _focusItem(icon: Icons.sports_handball, label: 'Arms', width: (w - 36) / 2 - 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Training', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Row(
          children: const [
            Icon(Icons.chevron_left, color: Colors.black38),
            Icon(Icons.chevron_right, color: Colors.black38),
          ],
        )
      ],
    );
  }

  Widget _focusItem({required IconData icon, required String label, required double width}) {
    return Expanded(
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 8, offset: const Offset(0, 4))],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(colors: [Color(0xFFEAF0FF), Color(0xFFF6F3FF)]),
              ),
              child: Icon(icon, size: 28, color: const Color(0xFF6C63FF)),
            ),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

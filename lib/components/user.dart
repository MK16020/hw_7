import 'package:flutter/material.dart';

class UserId extends StatelessWidget {
  const UserId({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: Icon(Icons.account_circle)),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '@user-new09988',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '0 XP',
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
              )
            ],
          ),
        ),
        const Expanded(flex: 1, child: Icon(Icons.add_alert_rounded))
      ],
    );
  }
}

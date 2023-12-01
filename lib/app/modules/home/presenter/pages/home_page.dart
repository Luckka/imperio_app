import 'package:flutter/material.dart';
import 'package:imperio/app/modules/home/presenter/pages/data/home_mock.dart';
import 'package:imperio/app/modules/home/presenter/pages/widgets/action_button_popular_championship_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Império")),
              SizedBox(height: 10),
              Text("Campeonatos populares"),
              SizedBox(height: 12),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  separatorBuilder: (context, index) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    final item = AppMock.profileButtons.elementAt(index);
                     return ActionButtonPopularChampionshipsWidget(onTap: (){}, icon: item.icon);
                  },
                
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:task_intern/widgets/home_widget.dart';
import 'package:task_intern/widgets/search_widget.dart';
import 'package:task_intern/widgets/favourite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _tabController.dispose();
  }

  void _tabChanged() {
    // Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
        },icon: const Icon(Icons.notifications_none_sharp,size: 35,),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.person_outline_outlined,size: 35,))
        ],
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: const [
            HomeWidget(),
            SearchWidget(),
            FavouriteWidget()
          ],
        ),
      ),
        bottomNavigationBar: SafeArea(
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.black38,
            tabs: const [
              Tab(
                icon: Icon(Icons.home_outlined,size: 50,),
              ),
              Tab(
                icon: Icon(Icons.search_rounded,size: 50,),
              ),
              Tab(
                icon: Icon(Icons.favorite_border_outlined,size: 50,),
              ),
            ],
          ),
        )
    );
  }
}

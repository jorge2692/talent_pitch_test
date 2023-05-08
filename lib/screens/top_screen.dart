import 'package:flutter/material.dart';
import 'package:talent_pitch_test/models/list_match_model.dart';
import 'package:talent_pitch_test/models/list_organization_model.dart';
import 'package:talent_pitch_test/models/list_vacant_model.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';
import 'package:talent_pitch_test/widget/image_card.dart';
import 'package:talent_pitch_test/widget/null_data_navigation.dart';
import 'package:talent_pitch_test/widget/titles.dart';
import 'package:talent_pitch_test/models/list_talent_model.dart';
import 'package:talent_pitch_test/widget/top_general_card.dart';


class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          centerTitle: true,
          title: Text('Top',style: TextStyle(color: MyColors.primaryColor, fontSize: 20),),
        ),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                labelColor: MyColors.secondColor,
                unselectedLabelColor: MyColors.primaryColor.withOpacity(0.15),
                indicatorColor: MyColors.secondColor,
                tabs: const <Widget>[
                  Tab(
                    text: 'Top del dia',
                  ),
                  Tab(
                    text: 'Top del mes',
                  ),
                  Tab(
                    text: 'Mis tops',
                  ),
                ],
              ),
              Expanded(child: TabBarView(
                children: <Widget>[
                  const NullDataNavigation(namePages: 'Top del dia', numberIcon: 0xf44d,),
                  const NullDataNavigation(namePages: 'Top del mes', numberIcon: 0xf051f,),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _textFieldSearch(),
                          _textButtonOptions(),
                          const Titles(title: 'Matches con talentos',),
                          gridViewBuilderCardsImage(),
                          const Titles(title: 'Reacciones a Talentos',),
                          talentCards(),
                          const SizedBox(height: 24,),
                          const Titles(title: 'Reacciones a Organizaciones',),
                          organizationCards(),
                          const SizedBox(height: 24,),
                          const Titles(title: 'Reacciones a Vacantes',),
                          vacantCards(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
               )
            ],
          ),
        ),
        ),
    );
  }

  Widget _textFieldSearch(){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: TextField(
        style: const TextStyle(fontSize: 12),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.primaryColor),
          ),
          labelText: 'Buscar listas por sus nombres',
          prefixIcon: const Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }

  Widget _textButtonOptions(){
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: MyColors.primaryOpacityColorTwo,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () { },
            child: Text('Talentos',style: TextStyle(color: MyColors.primaryColor),),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor: MyColors.primaryOpacityColorTwo,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () { },
            child: Text('Organizaciones',style: TextStyle(color: MyColors.primaryColor),),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor: MyColors.primaryOpacityColorTwo,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () { },
            child: Text('Vacantes',style: TextStyle(color: MyColors.primaryColor),),
          )
        ],
      ),
    );
  }

  Widget talentCards(){
    return SizedBox(
      height: 150,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.3,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index){
            var item = listTalentModels[index];
            return TopGeneralCard(title: item.title , colorBack: item.colores, colorIcon: item.iconColor, icon: item.iconNumber, subtitle: item.description);
          },
          itemCount: listTalentModels.length,
        scrollDirection: Axis.horizontal,
          ),
    );
  }

  Widget organizationCards(){
    return SizedBox(
      height: 150,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.3,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index){
          var item = listOrganizationModels[index];
          return TopGeneralCard(title: item.title , colorBack: item.colores, colorIcon: item.iconColor, icon: item.iconNumber, subtitle: item.description);
        },
        itemCount: listOrganizationModels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget vacantCards(){
    return SizedBox(
      height: 150,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.3,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index){
          var item = listVacantModels[index];
          return TopGeneralCard(title: item.title , colorBack: item.colores, colorIcon: item.iconColor, icon: item.iconNumber, subtitle: item.description);
        },
        itemCount: listVacantModels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }


  Widget gridViewBuilderCardsImage(){
    return SizedBox(
      height: 200,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.3,
          crossAxisCount: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index){
          var item = listMatchModels[index];
          return ImageCard(name: item.name, match: item.match, link1: item.linkOne, link2: item.linkTwo, link3: item.linkThree);
        },
        itemCount: listMatchModels.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

}

import 'package:flutter/material.dart';

class NoteDemosApp extends StatelessWidget {
  const NoteDemosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ProjectText.appBarTitle,
      style:ProjectTextStyle.appBarTitleStyle ,
      ),

      leading: ProjectIcons.leadingBackIcon,

      actions: [
        
          Padding(
            padding: const EdgeInsets.only(right: ProjectPadding.actionMenuRight),
            
            child: IconButton(
              icon: ProjectIcons.actionsMenuIcon,
              color: ProjectColors.appBarActionButtonColor,
              onPressed: () {},
    ),
          ),
      ],
    ),

      body:  Padding( //tüm proje bu paddingde
        padding: const EdgeInsets.symmetric(horizontal: ProjectPadding.columnHorizontal),
        child: Column(
          
          children: [
           Padding( //Resimlerin olduğu alan
             padding: const EdgeInsets.only(top: ProjectPadding.imageTop),
             child: Container(
              width: double.infinity,
              height: ContainerBoxHeight.imageHeight,
              decoration: const BoxDecoration(),
              child: Image.asset(ImagePath.booksAndApples),
             ),
           ),

          const Padding(//Başlığın olduğu alan
            padding: EdgeInsets.only(top:ProjectPadding.titleTop),
            child: SizedBox( 
              width: double.infinity,
              height: ContainerBoxHeight.titleHeight,
              //decoration: BoxDecoration( color: Colors.red),
            
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric( horizontal: ProjectPadding.titleHorizontal),
                  child: Text(
                    ProjectText.title,
                    style: ProjectTextStyle.titleStyle
                  ),
                )
              ),
            ),
          ),

          const SizedBox( // Açıklama alanı
            width: double.infinity,
            height: ContainerBoxHeight.paragrafHeight,
            //decoration: BoxDecoration(color: Colors.orange),

            child: Padding(
              padding: EdgeInsets.only(left: ProjectPadding.paragrafAll),
              child: Center(child: Text(
                ProjectText.paragraf,
                style: ProjectTextStyle.paragrafStyle
                ),
              )
              ),
            ),

            Padding( //satın al butonu
              padding: const EdgeInsets.symmetric( horizontal : ProjectPadding.buttonPaddingOut) + const EdgeInsets.only(top: ProjectPadding.buttonPaddingTop),
              child: ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ProjectColors.elevatedButtonBackgroundColor,
                minimumSize: const Size(ContainerBoxHeight.elevatedButtonWidth, ContainerBoxHeight.elevatedButtonHeight)
                
              ),
              
              child: const Padding(
                padding: EdgeInsets.all(ProjectPadding.buttonPaddingIn),
                child: Text(ProjectText.elevatedButtonText, 
                style:ProjectTextStyle.elevatedButtonStyle,
                ),
              ),
              ),
            ),

            //sepete ekle butonu
            TextButton(onPressed: () {}, child: const Text(ProjectText.textButtonText,
            style: ProjectTextStyle.textButtonStyle,
            )
          )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding{
  static const double imageTop = 50;
  static const double columnHorizontal = 10;
  static const double titleHorizontal = 10;
  static const double paragrafAll = 50;
  static const double buttonPaddingOut = 30;
  static const double buttonPaddingTop = 50;
  static const double buttonPaddingIn = 5;
  static const double titleTop = 50;
  static const double actionMenuRight = 15;
}

class ImagePath {
  static const String booksAndApples = "assets/png/BooksAndApples.png";
}

class ContainerBoxHeight {
  static const double imageHeight = 250;
  static const double titleHeight = 75;
  static const double paragrafHeight = 75;
  static const double elevatedButtonWidth =125;
  static const double elevatedButtonHeight = 60;
}

class ProjectFontSize {
  static const double titleSize = 40;
  static const double paragrafSize = 24;
  static const double buttonSize = 20;
}

class ProjectText {
  static const String title = "Kitaplar ve Elmalar";
  static const String paragraf = "Kitaplar ve Elmalar isimli, flutter deneme sayfası.";
  static const String elevatedButtonText = "SATIN AL";
  static const String textButtonText = "SEPETE EKLE";
  static const String appBarTitle = "BOOKS AND APPLES";
}

class ProjectTextStyle {
  static const TextStyle titleStyle = TextStyle(
    fontSize: ProjectFontSize.titleSize,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontFamily: "MyFontFamily",
  );

  static const TextStyle paragrafStyle = TextStyle(
    fontSize: ProjectFontSize.paragrafSize,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle elevatedButtonStyle = TextStyle(
    color: ProjectColors.elevatedButtonTextColor,
    fontSize: ProjectFontSize.buttonSize,
  );

 static const TextStyle textButtonStyle = TextStyle(
    color:ProjectColors.textButtonTextColor,
  );

  static const TextStyle appBarTitleStyle = TextStyle(
    color: ProjectColors.appBarTitleColor,
    fontSize: 20,
  );
}

class ProjectIcons {
  static const Icon leadingBackIcon =  Icon(Icons.arrow_back_outlined);
  static const Icon actionsMenuIcon =  Icon(Icons.menu_outlined);
}

class ProjectColors {
  static const Color appBarActionButtonColor = Colors.black;
  static const Color elevatedButtonBackgroundColor = Colors.black;
  static const Color elevatedButtonTextColor = Colors.white;
  static const Color textButtonTextColor = Colors.black;
  static const Color appBarTitleColor = Colors.black;
}
@Preview
@Entry
@Component
struct Item {
  build() {
    Column({space: 20}) {
      // header bar
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("<").backgroundColor("#dcdde0").fontColor(Color.Black);
        Text("Details").fontWeight(FontWeight.Bolder).fontSize(30);
        Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(30).height(30);
      }

      // item showcase
      Stack({alignContent: Alignment.BottomEnd}) {
        Image($r("app.media.shoe1")).objectFit(ImageFit.Cover).width(300).height(200);
        // review rate
        Column({space: 5}) {
          Row({space: 5}) {
            Image($r("app.media.icon")).width(30).height(30);
            Text("4.5").fontWeight(FontWeight.Bolder).fontSize(20);
          }
          Text("200 reviews");
        }
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .borderWidth(5)
        .borderColor(Color.White);
      }
      .width(320)
      .borderWidth(3)
      .borderRadius(20);

      Text("Running unisex shoes").fontWeight(FontWeight.Bolder).fontSize(25).width(200);
      Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(18).width(200);
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}
@Entry
@Component
struct Index {
  category_scroller: Scroller = new Scroller();
  grid_scroller: Scroller = new Scroller();
  controller: TabsController = new TabsController();

  build() {
    Column({space: 5}) {
      // page detail bar
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
        Image($r("app.media.user")).objectFit(ImageFit.Cover).width(40).height(40).borderRadius(10);
      }
      .padding({bottom: 20});

      Text("Discover our new items.").fontSize(20).fontWeight(FontWeight.Bolder).padding({bottom: 20});

      // search and filter
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        TextArea({placeholder: "Search..."}).width(250);
        Image($r("app.media.filter")).objectFit(ImageFit.Cover).width(35).height(5).borderWidth(2).borderRadius(5).opacity(0.6);
      }
      .padding({bottom: 20});

      // coming soon
      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Image($r("app.media.shoe1")).objectFit(ImageFit.Cover).width(70).height(70).borderWidth(1);
        Column() {
          Text("Running shoes red variant").fontSize(15).fontWeight(FontWeight.Bolder).width(130);
          Text("Coming Soon...").fontSize(15).fontWeight(FontWeight.Bolder).fontColor(Color.Blue).width(130);
        }
        .width(130)
        Column() {
          Toggle({ type: ToggleType.Switch, isOn: false }).width(40).height(15);
          Text("Notify Me").fontColor(Color.Gray).fontSize(13);
        }
      }
      .borderWidth(2)
      .borderRadius(10)
      .height(90)
      .margin({bottom: 20});

      // categories
      Text("Categories").fontSize(20).fontWeight(FontWeight.Bolder).margin({bottom: 10});
      Scroll(this.category_scroller) {
        Row({space: 8}) {
          Button("Sale").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Clothes").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Laptops").backgroundColor("#dcdde0").fontColor(Color.Black);
          Button("Smartphones").backgroundColor("#dcdde0").fontColor(Color.Black);
        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom: 25});

      // items header
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Text("Popular Now").fontWeight(FontWeight.Bolder).fontSize(15);
        Row({space: 3}) {
          Text("View All").fontWeight(FontWeight.Bolder).fontSize(15);
          Button(">").padding(0).width(15).height(15);
        }
      }

      // items list
      Grid(this.grid_scroller) {
        // item
        GridItem() {
          Column() {
            Image($r("app.media.shoe2")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Running Unisex Shoes").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.phone1")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Premium Smartphone").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 25000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.phone2")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim smartphone").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 20000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.laptop1")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Premium laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 60000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }

        GridItem() {
          Column() {
            Image($r("app.media.laptop2")).objectFit(ImageFit.Cover).width(130).height(130);
            Text("Ultra slim laptop").fontWeight(FontWeight.Bolder).fontSize(12);
            Text("₹ 50000").fontWeight(FontWeight.Bolder).fontSize(15);
          }
          .alignItems(HorizontalAlign.Start)
          .borderWidth(2)
          .borderRadius(10)
          .width(140);
        }
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .height(250);

      // bottom navigation bar
      Flex({justifyContent: FlexAlign.SpaceAround, direction: FlexDirection.Row}) {
        // navigation button
        Column() {
          Image($r("app.media.home")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Home").fontSize(12);
        }

        Column() {
          Image($r("app.media.categories")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Categories").fontSize(12);
        }

        Column() {
          Image($r("app.media.notifications")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Notification").fontSize(12);
        }

        Column() {
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(30).height(30);
          Text("Cart").fontSize(12);
        }
      }
    }
    .alignItems(HorizontalAlign.Start)
    .padding(30);
  }
}
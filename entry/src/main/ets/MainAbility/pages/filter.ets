@Preview
@Entry
@Component
struct Filter {
  size_scroller: Scroller = new Scroller();

  build() {
    Column({space: 20}) {
      // header bar
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Button("<").backgroundColor("#dcdde0").fontColor(Color.Black);
        Text("Filter").fontWeight(FontWeight.Bolder).fontSize(30);
        Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(30).height(30);
      }

      // gender filters
      Text("Gender").fontSize(20).fontWeight(FontWeight.Bolder);
      Row() {
        Row({space: 8}) {
          Button("Male").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("Female").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("Other").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
        }
        .height(20);
      }

      // category filters
      Text("Gender").fontSize(20).fontWeight(FontWeight.Bolder);
      List();

      // brand filters
      Text("Brand").fontSize(20).fontWeight(FontWeight.Bolder);
      List();

      // price filters
      Text("Price").fontSize(20).fontWeight(FontWeight.Bolder);
      Column() {
        Text("₹ 1000").fontSize(15).fontWeight(FontWeight.Bolder);
        Slider({ value: 1000, min: 100, max: 10000, step: 100, style: SliderStyle.InSet });
      }
      .alignItems(HorizontalAlign.Start)

      // size filters
      Text("Sizes").fontSize(20).fontWeight(FontWeight.Bolder);
      Scroll(this.size_scroller) {
        Row({space: 8}) {
          Button("6 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("7 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("8 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("9 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
          Button("10 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(15);
        }
        .height(20);
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On);

      // cnacel options
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button("Cancel");
        Button("Clear All");
      }
      .margin({top: 200});
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}
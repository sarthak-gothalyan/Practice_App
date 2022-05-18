@Preview
@Entry
@Component
struct Filter {
  size_scroller: Scroller = new Scroller();
  category_list: SelectOption[] = [
    {value: "category 1", icon: $r("app.media.icon")},
    {value: "category 2", icon: $r("app.media.icon")},
    {value: "category 3", icon: $r("app.media.icon")}
  ];
  brand_list: SelectOption[] = [
    {value: "brand A", icon: $r("app.media.icon")},
    {value: "brand B", icon: $r("app.media.icon")},
    {value: "brand C", icon: $r("app.media.icon")}
  ];

  build() {
    Column({space: 20}) {
      Column({space: 20}) {
        // header bar
        Flex({ justifyContent: FlexAlign.SpaceBetween }) {
          Button("<").backgroundColor("#dcdde0").fontColor(Color.Black);
          Text("Filter").fontWeight(FontWeight.Bolder).fontSize(30);
          Image($r("app.media.menu")).objectFit(ImageFit.Cover).width(30).height(30);
        }

        // gender filters
        Text("Gender").fontSize(25).fontWeight(FontWeight.Bolder);
        Row() {
          Row({ space: 8 }) {
            Button("Male").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("Female").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("Other").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
          }
          .height(20);
        }

        // category filters
        Text("Category").fontSize(25).fontWeight(FontWeight.Bolder);
        Select(this.category_list)
          .selected(0)
          .width(320)
          .height(45)
          .backgroundColor("#dcdde0")
          .borderRadius(20);

        // brand filters
        Text("Brand").fontSize(25).fontWeight(FontWeight.Bolder);
        Select(this.brand_list)
          .selected(0)
          .width(320)
          .height(45)
          .backgroundColor("#dcdde0")
          .borderRadius(20);

        // price filters
        Text("Price").fontSize(25).fontWeight(FontWeight.Bolder);
        Column() {
          Text("₹ 1000").fontSize(18).fontWeight(FontWeight.Bolder);
          Slider({
            value: 1000,
            min: 100,
            max: 10000,
            step: 100,
            style: SliderStyle.InSet
          });
        }
        .alignItems(HorizontalAlign.Start)

        // size filters
        Text("Sizes").fontSize(25).fontWeight(FontWeight.Bolder);
        Scroll(this.size_scroller) {
          Row({ space: 8 }) {
            Button("6 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("7 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("8 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("9 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
            Button("10 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(18);
          }
          .height(20);
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);
      }
      .alignItems(HorizontalAlign.Start);

      // cancel options
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button("Cancel");
        Button("Clear All");
      }
      .margin({top: 40});
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}
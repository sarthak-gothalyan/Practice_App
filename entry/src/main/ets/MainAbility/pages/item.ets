@Preview
@Entry
@Component
struct Item {
  desc_scroller: Scroller = new Scroller();
  size_scroller: Scroller = new Scroller();

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
            Image($r("app.media.star")).width(30).height(30);
            Text("4.5").fontWeight(FontWeight.Bolder).fontSize(20);
          }
          Text("200 reviews");
        }
        .backgroundColor(Color.Blue)
        .borderRadius(10)
        .borderWidth(5)
        .borderColor(Color.White);
      }
      .width(320)
      .borderWidth(3)
      .borderRadius(20);

      Text("Running unisex shoes").fontWeight(FontWeight.Bolder).fontSize(25).width(200);
      Text("₹ 4000").fontWeight(FontWeight.Bolder).fontSize(18).width(200);

      // item description
      Scroll(this.desc_scroller) {
        Text("Lorem ipsum dolor sit amet. Est rerum internos sed totam consequuntur ea vero asperiores et fuga numquam. Sed animi quis et quia fuga et maxime facere sed voluptatem dolor. Aut sapiente totam aut quod atque est neque adipisci ut error reprehenderit. Ut maiores dolores aut voluptate  non enim odit eum quis consequatur ut beatae voluptasEt earum velit ut omnis beatae et dolorem quae qui dolor accusantium et minima tenetur eos rerum facere. Sit deleniti reiciendis sed culpa dolor ut dolorem quia aut atque rerum ut eius placeat. Et quasi rerum ad neque necessitatibus et ullam galisum et sunt commodi aut quia ullam. Non odio obcaecati vel cumque obcaecati id modi illum et rerum galisum est reprehenderit quibusdam qui deleniti totam. Qui laborum quos et sequi eligendi et explicabo molestiae ea dolor similique! Et amet natus id explicabo omnis in quae molestiae et sint quas quo quasi tenetur sit consectetur adipisci")
        .fontColor("#d9d9d9")
        .fontSize(15);
      }
      .scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .height(100);

      // item options
      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Text("Color: ").fontSize(20);
        Column() {
          Radio({group: "Color", value: "red"});
          Text("Red").fontColor(Color.Red)
        }
        Column() {
          Radio({group: "Color", value: "Blue"});
          Text("Blue").fontColor(Color.Blue)
        }
        Column() {
          Radio({group: "Color", value: "Green"});
          Text("Green").fontColor(Color.Green)
        }
        Counter() {
          Text("1");
        }
      }

      // item filters
      Text("Available Sizes").fontSize(15).fontWeight(FontWeight.Bolder);
      Scroll(this.size_scroller) {
        Row({space: 8}) {
          Button("6 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("7 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("8 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("9 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
          Button("10 inches").backgroundColor("#dcdde0").fontColor(Color.Black).fontSize(12);
        }
        .height(20);
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On);

      // favourite and add to cart
      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Image($r("app.media.favourite")).padding(3).objectFit(ImageFit.Cover).height(30).width(30).borderWidth(1).borderRadius(20);
        Row() {
          Text("Add to cart").fontSize(15);
          Image($r("app.media.cart")).objectFit(ImageFit.Cover).width(20).height(20);
        }
        .borderWidth(3)
        .borderRadius(10);
      }
    }
    .alignItems(HorizontalAlign.Start)
    .margin(20);
  }
}
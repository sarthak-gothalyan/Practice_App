@Component
export default struct Item {
  //@Prop id: number

  build() {
      Column() {
        Text("name")
          .fontSize("20vp")
          .fontWeight(FontWeight.Bolder)
          .margin("3vp");
        Text("spec1")
          .fontSize("18vp")
          .margin("3vp");
        Text("spec2")
          .fontSize("18vp")
          .margin("3vp");
        Text("spec3")
          .fontSize("18vp");
        // add remove from cart actions
        Row() {
          Button("-")
            .width("60vp")
            .onClick(() => {
              console.log("remove from cart");
            });
          Text("0")
            .width("50vp")
            .margin("10vp")
            .borderWidth(2)
            .fontSize("20vp");
          Button("+")
            .width("60vp")
            .onClick(() => {
              console.log("add to cart");
            });
        }
          .margin("3vp");
      }
        .margin("10vp");
  }
}
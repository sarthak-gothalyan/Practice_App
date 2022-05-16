import Item from "./item";

@Preview
@Entry
@Component
export default struct Shop {
//  @State cart: Item[] = [];
//  @State id: number = 0;

//  getID(): number {
//    return this.id++;
//  }
//
//  addToCart(id: number): void {
//  }
  scroller: Scroller = new Scroller();

  build() {
    Column() {
      // shop cart option
      Row() {
        Image($r("app.media.icon"))
          .objectFit(ImageFit.Contain)
          .height("40vp")
          .width("40vp")
          .onClick(() => {
            console.log("shop");
          });
        Divider().vertical(true).height("40vp").width("120vp");
        Image($rawfile("cart.png"))
          .objectFit(ImageFit.Contain)
          .height("40vp")
          .width("40vp")
          .onClick(() => {
            console.log("cart");
          });
      }
        .justifyContent(FlexAlign.SpaceEvenly);
      Divider();
      // items in shop
      Scroll(this.scroller) {
        Column() {
          Row() {
            Image($r("app.media.shoe1"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
          Row() {
            Image($r("app.media.shoe2"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
          Row() {
            Image($r("app.media.phone1"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
          Row() {
            Image($r("app.media.phone2"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
          Row() {
            Image($r("app.media.laptop1"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
          Row() {
            Image($r("app.media.laptop2"))
              .objectFit(ImageFit.Contain)
              .height("130vp")
              .width("130vp");
            Item()
          };
        }
      }
        .scrollable(ScrollDirection.Vertical)
        .scrollBar(BarState.On);
    }
      .width('100%');
  }
}
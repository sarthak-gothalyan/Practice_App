@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Button("LOGIN")
          .onClick(() => {
            console.log("login");
          })
          .width("150vp")
          .margin("5vp");
        Button("REGISTER")
          .onClick(() => {
            console.log("register");
          })
          .width("150vp");
      }
      .width('100%')
    }
    .height('100%')
  }
}
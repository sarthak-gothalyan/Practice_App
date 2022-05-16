@Preview
@Entry
@Component
struct Login {
  build() {
    Row() {
      Column() {
        TextInput({placeholder: "Name"})
          .width("80%")
          .margin("10vp");
        TextInput({placeholder: "Password"})
          .width("80%")
          .margin("10vp");
        Button("LOGIN")
          .margin("10vp");
      }
      .width("100%");
    }
      .height("100%");
  }
}
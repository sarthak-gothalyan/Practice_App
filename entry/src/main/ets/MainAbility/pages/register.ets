@Preview
@Entry
@Component
struct Register {
  build() {
    Row() {
      Column() {
        TextInput({placeholder: "Name"})
          .width("80%")
          .margin("10vp");
        TextInput({placeholder: "Password"})
          .width("80%")
          .margin("10vp");
        Button("REGISTER")
          .margin("10vp");
      }
      .width("100%");
    }
    .height("100%");
  }
}
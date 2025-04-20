@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        // 这里绑定了点击事件
        .onClick(() => {
          // 对于上面的message可以直接修改
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}
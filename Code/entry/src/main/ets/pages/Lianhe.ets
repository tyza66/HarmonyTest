// 联合类型可以将变量的类型限制在一定范围内 还可以将变量的值限制在一定范围内

let a: number | string = "你好"

a = 2

let b: "112" | "223" = "112"


// 枚举在这里 这里弄个枚举的介绍
enum MyColor{
  Red = "#000000",
  Green = "#111111"
}

let color: MyColor = MyColor.Red

console.log(color);


@Entry
@Component
struct Index {
  @State message: string = '联合类型的基础操作';

  build() {
    RelativeContainer() {
      // 文档中心 https://developer.huawei.com/consumer/cn/doc/
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })// 这里绑定了点击事件
        .onClick(() => {
          // 对于上面的message可以直接修改
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}
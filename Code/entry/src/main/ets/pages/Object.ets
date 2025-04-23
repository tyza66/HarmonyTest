// 这里使用接口定义对象的结构类型

// 定义接口
interface Person {
  name:String
  age:number
  weight:number

  // 定义方法
  eat:(food:string) => void
}

// 基于接口创建对象
let myPerson :Person = {
  name:"tyza66",
  age:25,
  weight:90,
  // 实现方法
  eat:(food:string)=>{
    console.log("吃了",food)
  }
}

console.log("对象信息",myPerson);
myPerson.eat("肉")

// 移步Lianhe

@Entry
@Component
struct Index {
  @State message: string = '对象的基础操作';

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
// 要加代码直接在这里加就行 默认会打开热部署
// 每次刷新预览区会重新执行页面逻辑

// 简单输出信息
console.log('tyza66:', 'Hello World')

// 变量演示
let box1 = "hello"
let box2: string = 'abc'

let n1 = 10
let n2: number = 20

let b1 = true
let b2: boolean = false

// 常量演示
const PI = 3.14
const Apple :number = 9301

console.log(box1, box2)

// 数组
let ages = [10,20]
let names:string[] = ['小明','小红']
console.log("数组内容",names);
console.log("数组元素",names[0]);

//方法
function hello(){
  console.log("hello")
  return "hello"
}

hello()

// 这里同时也是支持箭头函数的()=>{}
let world = ()=>{
  console.log("world")
}

// 下一课程去Object

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

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
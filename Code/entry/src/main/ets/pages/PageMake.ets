@Entry
@Component
struct Index {
  // 这种叫做状态变量 在代码中改变的时候 页面中会跟着变
  @State message: string = '控件的基础操作';

  // 样式本质上就好像css演示
  build() { // build里面只能有一个容器组件
    // 外层竖着排版
    Column(){
      Text('页面主题')
      Row(){
        Text("第一个").backgroundColor(Color.Blue).fontColor(Color.Brown)
        Text("第二个")
        Text("第三个")
      }
      Button("点击事件").onClick(()=>{
        AlertDialog.show({
          message:"nihao"
        })
      })
    }
  }
}
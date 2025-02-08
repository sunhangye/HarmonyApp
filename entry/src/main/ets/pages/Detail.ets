import { router } from '@kit.ArkUI';

@Entry
@Component
struct Detail {
  @State message: string = 'Hello World11';

  build() {
      Column() {
        Image('https://img2.baidu.com/it/u=3542351100,3396912358&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=1067')
          .width('100%')
          .border({
            color: Color.Red,
            width: 5,
            style: BorderStyle.Dotted,
            radius: 50
          })
        Text('ai生成美女头像｜抖音ai美女头像太绝啦。#ai生成 #美爆了 #高级感 #甜美系 #人间水蜜桃')
          .textOverflow({
            overflow: TextOverflow.Ellipsis,
          })
          .maxLines(2)
          .fontSize(26)
          .fontWeight(FontWeight.Bolder)
          .margin(10)
        // Row({space: 20}) {
        //   Text('都市').fontSize(26)
        //   Text('生活').fontSize(26)
        //   Text('情感').fontSize(26)
        //   Text('男频').fontSize(26)
        // }
        // .width('100%')
        // .height(80)
        // .backgroundColor(Color.Pink)
        // .backgroundImage($r('app.media.flower'), ImageRepeat.NoRepeat)
        // .backgroundImagePosition({
        //   x: '300vp',
        //   y: '0vp',
        // })
        //
        // TextInput({
        //   placeholder: '请输入'
        // })
        //   .margin({top: 20})
        Button('返回')
          .width(`90%`)
          .margin(20)
          .onClick(() => {
            router.back()
          })
      }
      .margin({top: -20})
      .width('100%')
      .alignItems(HorizontalAlign.Start)
  }
}
import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit';
import { CommonConstants } from '../common/constants/CommonConstants';

@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World11';



  build() {
      Column() {
        Row() {
          Image($r('app.media.jd_cancel'))
            .width(20)
            .onClick(() => {
              router.back()
            })
          Text('帮助')
            .onClick(() => {
              AlertDialog.show({
                message: '帮助'
              })
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Image($r('app.media.jd_logo'))
          .width(250)
          .height(250)

        Row() {
          Text('国家/地区')
            .layoutWeight(1)
            .fontColor('#666')
          Text('中国(+86)')
            .fontColor('#666')
            .margin({right: 5})
          Image($r('app.media.jd_right'))
            .width(20)
            .fillColor('#666')
        }
        .width('100%')
        .height(40)
        .backgroundColor('#fff')
        .borderRadius(20)
        .padding({left: 15, right: 20})

        TextInput(
          {placeholder: '请输入手机号'}
        )
          .placeholderColor('#666')
          .height(40)
          .borderRadius(20)
          .backgroundColor('#fff')
          .margin({ top: 20 })

        Row() {
          Checkbox()
            .width(10)
            .margin({ top: 7 })
          Text() {
            Span('我已经阅读并同意')
            Span('《京东隐私政策》').fontColor('#3274f6')
            Span('《京东用户服务协议》').fontColor('#3274f6')
            Span('未注册的手机号将自动创建京东账号')
          }
          .fontSize(13)
          .fontColor('#666')
          .lineHeight(20)

        }
        .alignItems(VerticalAlign.Top)
        .margin({top: 15})

        // 登录
        Button('登录')
          .width('100%')
          .backgroundColor('#bf2838')
          .margin({ top: 25 })
          .type(ButtonType.Capsule)
          .onClick(() => {
            console.info(`Succeeded in clicking the 'Next' button.`)
            router.pushUrl({url: CommonConstants.INDEX_PAGE}).then(() => {
              console.log('Success in jumping to the detail page')
            }).catch((err: BusinessError) => {
              console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
            })
          })

        // 新用户注册等链接
        Row({ space: 25 }) {
          Text('新用户注册').fontSize(14).fontColor('#666')
          Text('账户密码登录').fontSize(14).fontColor('#666')
          Text('无法登录').fontSize(14).fontColor('#666')
        }
        .margin({ top: 15 })

        // 填充组件；作用：填充空白区域 （像弹簧）
        Blank()

        // 底部其他登录方式
        Column() {
          Text('其他登录方式')
            .fontColor('#666')
            .height(22)
            .fontSize(14)
            .margin({ bottom: 28 })
          Row() {
            Image($r('app.media.jd_huawei')).width(34)
            Image($r('app.media.jd_wechat')).width(34).fillColor('#56a44a')
            Image($r('app.media.jd_weibo')).width(34).fillColor('#c8493b')
            Image($r('app.media.jd_QQ')).width(34).fillColor('#4ba0e8')
          }
          .width('100%')
          .margin({ bottom: 30 })
          .justifyContent(FlexAlign.SpaceAround)
        }
        .width('100%')
      }
        .padding(20)
        .width('100%')
        .height('100%')
        .backgroundImage($r('app.media.jd_login_bg'))
        .backgroundImageSize(ImageSize.Cover)
  }
}
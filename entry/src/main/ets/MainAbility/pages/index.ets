@Entry
@Component
struct Index {
  @State searchText: String=''
  scroller: Scroller = new Scroller()
  scroll_grid:Scroller = new Scroller()
  @State active: boolean = false
  build() {
    Column({space:5}){
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Button({type:ButtonType.Circle,stateEffect:true}){
          Image($r('app.media.menu')).objectFit(ImageFit.Contain).width(25).height(30);
        }.width(30).height(30).backgroundColor(Color.White)

        Button({type:ButtonType.Circle,stateEffect:true}){
          Image($r('app.media.profileIcon')).width(30).height(30);
        }.width(30).height(30).backgroundColor(Color.White)
      }.margin({left:15,top:20,right:15})

      Text("Discover \nour new items.").margin({left:15,top:10,bottom:5}).fontFamily("Times New Roman").fontSize(20).fontWeight(700).fontStyle(FontStyle.Italic);

      Flex({justifyContent:FlexAlign.SpaceAround}){
          TextArea({placeholder:' Search...'})
            .textAlign(TextAlign.Start)
            .borderRadius(0)
            .onChange((value:string) => {
                this.searchText=value
            })
          Button({type:ButtonType.Circle,stateEffect:true}){
            Image($r('app.media.searchButton')).width(30).height(30)
          }.margin({right:10})
           .width(30)
           .height(30)
           .onClick((event:ClickEvent)=>{
           })
          Navigator({target:'pages/filter',type:NavigationType.Push}){
              Image($r('app.media.filterIcon')).width(40).height(40)
            .margin({right:10,left:5})
          }

      }.margin({left:5,top:10,right:10,bottom:10})

      Flex({justifyContent:FlexAlign.SpaceAround}){
        Image($r('app.media.SportsShoes2_2')).width(60).height(60).margin({top:5})
        Column(){
          Text("Abidas Running \nShoes").fontFamily("sans-serif").fontStyle(FontStyle.Italic).fontSize(15).fontWeight(700)
          Text("Coming soon").fontFamily("Times New Roman").fontStyle(FontStyle.Normal).fontSize(18).fontWeight(FontWeight.Bold).fontColor(Color.Blue)
        }.margin({top:5})
        Column(){
          Toggle({type:ToggleType.Switch, isOn:false}).width(40).height(15);
          Text("Notify Me").fontColor(Color.Gray)
        }.margin({top:5})
      }.margin({left:10,top:10,right:10,bottom:10}).border({width:3, color:0xEAEAEA}).borderRadius(8)

      Text("Categories").margin({left:15,bottom:5}).fontSize(18).fontColor(Color.Black).fontWeight(700).fontFamily("Times New Roman")
      Scroll(this.scroller){
        Row({space:8}){
          Button("Sports Shoes").backgroundColor(0x3498eb)
          Button("Casual Shoes").backgroundColor(0x3498eb)
          Button("Formal Shoes").backgroundColor(0x3498eb)
          Button("Sneakers").backgroundColor(0x3498eb)
          Button("Flip-Flops").backgroundColor(0x3498eb)
        }.margin({left:5})
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On)
      .margin({bottom:10})

      Text("Popular Shoes").margin({left:15,bottom:5}).fontSize(18).fontColor(Color.Black).fontWeight(700).fontFamily("Times New Roman")

      Grid(this.scroll_grid){
          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButtonRed")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Navigator({target:'pages/detail',type:NavigationType.Push}){
                Image($r("app.media.SportsShoes1_1")).objectFit(ImageFit.Cover).width(130).height(130).margin({top:5,left:14})
              }
              Text("Men Grey Running Shoes").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 2599").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor("#C4C3BE")
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#C4C3BE")
          }
          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButton")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Image($r("app.media.Casuals1_1")).objectFit(ImageFit.Cover).width(130).height(130).margin({top:5,left:14})
              Text("AfroJeck Men Designer Sneakers").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 799").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor("#BAAB85")
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#BAAB85")
          }

          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButton")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Image($r("app.media.FormalShoes1_1")).objectFit(ImageFit.Contain).width(130).height(130).margin({top:5,left:14})
              Text("Men Brown Formal Shoes").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 2069").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor(0xFAEEE0)
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#F5D494")
          }

          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButtonRed")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Image($r("app.media.Sneakers1_1")).objectFit(ImageFit.Contain).width(130).height(130).margin({top:5,left:14})
              Text("Women Walk Series Socks Shoes").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 1739").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor("#F1BB98")
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#F1BB98")
            .onClick((event:ClickEvent) => {

            })
          }

          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButtonRed")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Image($r("app.media.Flipflop1_1")).objectFit(ImageFit.Cover).width(130).height(130).margin({top:5,left:14})
              Text("Men Printed Flip-Flops").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 604").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor("#FAB87A")
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#FAB87A")
          }

          GridItem(){
            Column(){
              Button({type:ButtonType.Circle,stateEffect:true}){
                Image($r("app.media.favButton")).width(20).height(20).borderRadius(8)
              }
              .width(20)
              .height(20)
              .margin({left:135})
              .onClick((event:ClickEvent) =>{

              })
              Image($r("app.media.Casuals2_1")).objectFit(ImageFit.Contain).width(130).height(130).margin({top:5,left:14})
              Text("Men White Clarkin Sneakers").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7}).fontFamily("Times New Roman")
              Text("₹ 1799").fontWeight(FontWeight.Bolder).fontSize(15).margin({top:2,left:7})
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(1)
            .borderColor("#F0EFEE")
            .borderRadius(10)
            .width(160)
            .height(220)
            .backgroundColor("#F0EFEE")
          }
      }
      .columnsTemplate('1fr 1fr')
      .columnsGap(5)
      .rowsGap(10)
      .height(300)

      Flex({justifyContent:FlexAlign.SpaceAround, direction:FlexDirection.Row}){
        Column(){
          Image($r('app.media.homeButton')).width(30).height(30)
          Text("Home")
        }
        Column(){
          Image($r('app.media.categoriesIcon')).width(30).height(30)
          Text("Categories")
        }
        Column(){
          Image($r('app.media.notificationsButton')).width(30).height(30)
          Text("Notification")
        }
        Column(){
          Image($r('app.media.cartButton')).width(30).height(30)
          Text("My Cart")
        }
      }

    }.alignItems(HorizontalAlign.Start).padding(10);
  }
}
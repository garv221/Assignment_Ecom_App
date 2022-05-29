@Entry
@Component
struct Filter {
  @State message: string = ''
  @State inSetValue: number = 1000
  size_scroller: Scroller = new Scroller();
  @State rating: number = 1
  @State indicator: boolean = false
  category_list: SelectOption[] = [
    {value: "Select category"},
    {value: "Sports Shoes"},
    {value: "Casual Shoes"},
    {value: "Formal Shoes"},
    {value: "Sneakers"},
    {value: "Flip-Flops"}
  ];
  brand_list: SelectOption[] = [
    {value: "Select brand"},
    {value: "Abidas"},
    {value: "Niek"},
    {value: "AfroJeck"},
    {value: "Red Tepe"},
    {value: "Pume"}
  ];
  build() {
      Column({space:5}){
        Flex({justifyContent:FlexAlign.SpaceBetween}){
          Navigator({target:'pages/index',type:NavigationType.Back}){
            Image($r("app.media.backIcon")).width(20).height(20)
          }
            Text("Filter").width(60).height(20).fontFamily("Arial").fontSize(20).fontWeight(700).fontStyle(FontStyle.Normal);
            Button({type:ButtonType.Circle}){
              Image($r("app.media.optionIcon")).width(20).height(20)
            }.width(20).height(20)
        }.margin({left:15,top:20,right:15,bottom:30})

        Text('Gender').margin({left:15,bottom:5}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")

        Flex({justifyContent:FlexAlign.Start}){
          Button("Male",{type:ButtonType.Normal, stateEffect:true})
            .margin({left:4,right:20,top:5})
            .width(60)
            .height(30)
          .backgroundColor(Color.Blue)
          .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .fontFamily("sans-serif")
            .fontSize(12)
          .borderRadius(10)
          .onClick((event:ClickEvent)=>{
          })

          Button("Female",{type:ButtonType.Normal, stateEffect:true})
            .margin({left:5,right:20,top:5})
            .backgroundColor(0xF3F4ED)
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .fontFamily("sans-serif")
            .fontSize(12)
            .borderRadius(10)
            .onClick((event:ClickEvent)=>{
            })

          Button("Other",{type:ButtonType.Normal, stateEffect:true})
            .margin({left:5,right:20,top:5})
            .backgroundColor(0xF3F4ED)
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Bold)
            .fontFamily("sans-serif")
            .fontSize(12)
            .borderRadius(10)
            .onClick((event:ClickEvent)=>{
            })
        }.margin({bottom:30})

        Text('Category').margin({left:15,bottom:5}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")

        Select(this.category_list)
          .selected(0)
          .selectedOptionFontColor(Color.Blue)
          .width(310)
          .height(50)
          .backgroundColor("#F3F4ED")
          .borderRadius(10)
          .margin({left:15,bottom:20})

        Text('Brand').margin({left:15,bottom:5}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")

        Select(this.brand_list)
          .selected(0)
          .selectedOptionFontColor(Color.Blue)
          .width(310)
          .height(50)
          .backgroundColor("#F3F4ED")
          .borderRadius(10)
          .margin({left:15,bottom:20})

        Text('Price').margin({left:15,bottom:5}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")

        Slider({
          value: this.inSetValue,
          min: 500,
          max: 5000,
          step: 100,
          style: SliderStyle.OutSet
        })
          .blockColor(Color.Blue)
          .trackColor(Color.Gray)
          .selectedColor(Color.Blue)
          .showSteps(false)
          .showTips(false)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.inSetValue = value
            console.info('value:' + value + 'mode:' + mode.toString())
          })
        Text("₹ 500-"+this.inSetValue.toFixed(0)).fontSize(16).margin({left:15,bottom:20})

        Text('Select Size (UK Size)').margin({left:15,bottom:10}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")
        Scroll(this.size_scroller) {
          Row({ space: 8 }) {
            Button("3").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("3.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("4").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("4.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("5.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("6").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("6.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("7").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("7.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("8").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("8.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("9").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
            Button("9.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(16);
          }.margin({left:15,bottom:20})
          .height(30);
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.On);

        Text('Rating').margin({left:15,bottom:10}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Arial")

          Grid() {
            GridItem() {
              Column() {
                Button({ type: ButtonType.Circle , stateEffect:true}) {
                  Image($r('app.media.4StarUp')).objectFit(ImageFit.Contain).width(140).height(30)
                }
                .width(100)
                .height(30)
                .backgroundColor(Color.White)
              }
              .alignItems(HorizontalAlign.Start)
              .width(200)
              .height(30)
            }


            GridItem() {
              Column() {
                Button({ type: ButtonType.Circle , stateEffect:true}) {
                  Image($r('app.media.3StarUp')).objectFit(ImageFit.Contain).width(140).height(30)
                }
                .width(100)
                .height(30)
                .backgroundColor(Color.White)
              }
              .alignItems(HorizontalAlign.Start)
              .width(200)
              .height(30)
            }

            GridItem() {
              Column() {
                Button({ type: ButtonType.Circle , stateEffect:true}) {
                  Image($r('app.media.2StarUp')).objectFit(ImageFit.Contain).width(140).height(30)
                }
                .width(100)
                .height(30)
                .backgroundColor(Color.White)
              }
              .alignItems(HorizontalAlign.Start)
              .width(200)
              .height(30)
            }
            GridItem() {
              Column() {
                Button({ type: ButtonType.Circle , stateEffect:true}) {
                  Image($r('app.media.1StarUp')).objectFit(ImageFit.Contain).width(140).height(30)
                }
                .width(100)
                .height(30)
                .backgroundColor(Color.White)

              }
              .alignItems(HorizontalAlign.Start)
              .width(200)
              .height(30)
            }

          }
        .columnsTemplate('1fr 1fr')
        .columnsGap(2)
        .rowsGap(5)
        .height(100)

        Flex({justifyContent: FlexAlign.SpaceEvenly}) {
          Button("Clear All",{type:ButtonType.Normal}).width(120).borderRadius(10);
          Button("Apply",{type:ButtonType.Normal}).width(120).borderRadius(10);
        }
        .margin({top: 2});

      }.alignItems(HorizontalAlign.Start).padding(10);
  }
}
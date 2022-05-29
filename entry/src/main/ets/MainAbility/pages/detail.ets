@Entry
@Component
struct Detail {
  private swiperController: SwiperController = new SwiperController()
  desc_scroller: Scroller = new Scroller()
  size_scroller: Scroller = new Scroller();
  @State value: number = 1
  build() {
    Column({space:5}){
      Flex({justifyContent:FlexAlign.SpaceBetween}){
        Navigator({target:'pages/index',type:NavigationType.Back}){
          Image($r("app.media.backIcon")).width(20).height(20)
        }
        Text("Detail").width(60).height(20).fontFamily("Arial").fontSize(20).fontWeight(700).fontStyle(FontStyle.Normal);
        Button({type:ButtonType.Circle}){
          Image($r("app.media.optionIcon")).width(20).height(20)
        }.width(20).height(20)
      }.margin({left:15,top:20,right:15,bottom:30})

      Swiper(this.swiperController) {
        Column() {
          Image($r('app.media.SportsShoes1_1')).height(160).width(200).margin({ top: 10 }).objectFit(ImageFit.Contain)
        }
        .width(310)
        .height(180)
        .margin({ left: 15 })
        .borderRadius(10)
        .alignItems(HorizontalAlign.Center)
        .backgroundColor("#373736")

        Column() {
          Image($r('app.media.SportsShoes1_2')).height(160).width(200).margin({ top: 10 }).objectFit(ImageFit.Contain)
        }
        .width(310)
        .height(180)
        .margin({ left: 35 })
        .borderRadius(10)
        .alignItems(HorizontalAlign.Center)
        .backgroundColor(Color.White)
      }
      .width(340)
      .height(220)
      .index(0)
      .autoPlay(false)
      .indicator(true) // Navigation dots are enabled by default.
      .loop(false) // Loop playback is enabled by default.
      .duration(1000)
      .vertical(false) // Horizontal swiping is enabled by default.
      .itemSpace(0)
      .onChange((index: number) => {
        console.info(index.toString())
      })

      Text("Men Active Grey 1.0 Running Shoes").fontFamily("Times New Roman").margin({left:15,bottom:8}).fontSize(20).fontColor(Color.Black).fontWeight(700)
      Text("₹ 2599").fontWeight(FontWeight.Bolder).fontFamily("Times New Roman").fontSize(15).margin({left:15,bottom:10})

//      Scroll(this.desc_scroller) {
//        Text("Lorem ipsum dolor sit amet. Est rerum internos sed totam consequuntur ea vero asperiores et fuga numquam. Sed animi quis et quia fuga et maxime facere sed voluptatem dolor. Aut sapiente totam aut quod atque est neque adipisci ut error reprehenderit. Ut maiores dolores aut voluptate  non enim odit eum quis consequatur ut beatae voluptasEt earum velit ut omnis beatae et dolorem quae qui dolor accusantium et minima tenetur eos rerum facere. Sit deleniti reiciendis sed culpa dolor ut dolorem quia aut atque rerum ut eius placeat. Et quasi rerum ad neque necessitatibus et ullam galisum et sunt commodi aut quia ullam. Non odio obcaecati vel cumque obcaecati id modi illum et rerum galisum est reprehenderit quibusdam qui deleniti totam. Qui laborum quos et sequi eligendi et explicabo molestiae ea dolor similique! Et amet natus id explicabo omnis in quae molestiae et sint quas quo quasi tenetur sit consectetur adipisci")
//          .fontColor("#d9d9d9")
//          .fontSize(15);
//      }
//      .scrollable(ScrollDirection.Vertical)
//      .scrollBar(BarState.On)
//      .height(100)
//      .margin({left:15,right:15,bottom:10})
        Grid(){
          GridItem(){
            Column(){
              Text("Arch Type").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Medium").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start).margin({bottom:5})
          }
          GridItem(){
            Column(){
              Text("Sports").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Running").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start).margin({bottom:5})
          }
          GridItem(){
            Column(){
              Text("Material").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Synthetic").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start).margin({bottom:5})
          }
          GridItem(){
            Column(){
              Text("Outsole Type").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Marking").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start).margin({bottom:5})
          }
          GridItem(){
            Column(){
              Text("Surface Type").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Indoor").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start)
          }
          GridItem(){
            Column(){
              Text("Cushoning").fontFamily("Times New Roman").fontWeight(FontWeight.Bold).fontSize(15)
              Text("Medium").fontSize(12).fontFamily("Times New Roman").margin({bottom:5})
              Divider().color("#C4C4BD").strokeWidth(1)
            }.alignItems(HorizontalAlign.Start)
          }
        }
        .columnsTemplate('1fr 1fr')
        .rowsGap(5)
        .columnsGap(10)
        .margin({left:15,bottom:10})
        .height(135)



      Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}) {
        Text('Color: ').margin({left:15,bottom:10}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Times New Roman")

        Column() {
          Radio({group: "Color",value:"Grey"}).colorBlend(Color.Brown).borderRadius(100).backgroundColor(Color.Grey).width(5).height(5)
          Text("Grey").fontColor(Color.Black)
        }
        Column() {
          Radio({group: "Color",value:"Grey"}).colorBlend(Color.Blue).borderRadius(100).backgroundColor(Color.Blue).width(5).height(5)
          Text("Blue").fontColor(Color.Black)
        }
        Column() {
          Radio({group: "Color",value:"Grey"}).colorBlend(Color.Brown).borderRadius(100).backgroundColor(Color.Black).width(5).height(5)
          Text("Black").fontColor(Color.Black)
        }
        Counter() {
          Text(this.value.toString())
        }
        .onInc(() => {
          this.value++
        })
        .onDec(() => {
          this.value--
        })
      }
      .margin({right:15,bottom:10})

      Text('Select Size (UK Size)').margin({left:15,bottom:10}).fontSize(15).fontColor(Color.Black).fontWeight(700).fontFamily("Times New Roman")
      Scroll(this.size_scroller) {
        Row({ space: 8 }) {
          Button("3").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("3.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("4").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("4.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("5.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("6").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("6.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("7").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("7.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("8").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("8.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("9").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
          Button("9.5").backgroundColor("#F3F4ED").fontColor(Color.Black).fontSize(14);
        }.margin({left:15,bottom:40})
        .height(30);
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.On);


      Flex({justifyContent: FlexAlign.SpaceAround}) {
        Button({type:ButtonType.Circle,stateEffect:true}){
          Image($r("app.media.favButton")).objectFit(ImageFit.Contain).borderColor(Color.Black)
        }
        .width(60)
        .height(60)
        .margin({left:15})
        .backgroundColor(Color.White)
        .borderColor(Color.Black)
        .onClick((event:ClickEvent) =>{

        })
        Button("Add to Cart",{type:ButtonType.Normal}).width(200).borderRadius(10);
      }
      .margin({top: 2});
    }.alignItems(HorizontalAlign.Start).padding(10);
  }
}
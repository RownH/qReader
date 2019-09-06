import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Item"
import "../Popup"
import Reader 1.0
import Chapter 1.0
Rectangle{
    id:root;
    width: 400;
    height: 600;
    property var backcolor:"#FFE4B5";
    property var fontcolor: "black";
    property var fontSize: 15;
    property var footColor: "black"
    Reader{
        id:readCatalog;
        charts: [
            Chapter{ name: "第一章";source:"http:"; str: "西北苍茫雄山，直插云海，如同军人那挺拔的脊梁，牢牢支撑着这片所有华夏子孙深爱的土地。

    校场上嘹亮的嘶吼冲破天际，仿佛一头头嗷嗷叫的猛虎，威慑着无数胆敢染指华夏的宵小。

    这是一支没有番号的神秘部队，只有一个代号。

    龙牙！

    华夏最强大的特种部队，甚至是全世界。

    “老首长，我已经想清楚了，退伍挺好的。”

    看着面前肩扛两颗金星的白发老者，林轩咧嘴乐呵呵笑着。

    “混账东西！”老者恨铁不成钢，大声怒骂。

    老者戎马一生，铁血冷酷，此刻竟是红了眼睛。

    因为站在他面前这个剑眉飞扬桀骜不驯的年轻人，是他亲手从最基层的新兵营带上来看着成长的，并且在短短五年内迅速崛起成为“龙牙”最锋利的那把战刃，是他的心头肉。

    林轩无论单兵能力，还是他的小分队，都是整个龙牙部队的骄傲。

    这些年无论在炮火连天的中东，还是非洲、南美等战乱不止的地区，都极其出色的完成了上面交给的任务。

    但是这次，林轩居然昏了头，脑门一热便悍然越界将印国赫赫有名的“山鹰”特战部队给一窝端了，军人擅自越过他国边境，这种行为几乎等同于宣战，一个不好就会挑起国家之间的战争，酿成滔天大祸。

    所以，饶是老者在军中排的上号，但也无法平息林轩这种公然违反军纪的恶劣行为，只能不要自己那张老脸尽最大努力四处求人，才保住了林轩不被关进军事监狱，不过前提必须离开部队。

    犯了这样的事，倘若军队不严肃处理，那军纪岂不是放着当摆设？

    后来的人如果都这么胡来，那军队还不乱套了？

    “老首长，对不起，小轩让您失望了。”

    林轩看着老领导歇斯底里的怒吼，强行压抑的情绪再也绷不住，倾泻了出来。

    他眼泪唰的涌出来，两行泪水从刀削般的坚毅脸庞滚落下来。

    对一个军人而言，最可耻的事情就是被赶出部队，那是一生的耻辱！

    “我记得刚入龙牙的时候，您亲口对我说过，

    一个男人，一生需要守护四样东西！

    脚下的土地，家里的父母，怀中的女人，身边的兄弟！”

    林轩眼睛充满了血丝，却昂首挺胸目光如电的说着。

    “所以，我不后悔自己曾做过的事情，

    ‘四眼儿’是我的队员，更是我的兄弟，他被‘山鹰’那些杂毛差点击中心脏丢掉小命，是他们公然挑衅在先！

    如果我不反击，连自己的兄弟都不能保护，还拿什么去保家卫国！”

    这道理，可是您这个老兵痞，教给我这小兵痞的。

    “你……”

    老者气的手指发抖，一怒之下抬脚就往林轩的身上踹去，但是林轩纹丝不动，就跟挠痒痒那般没有半点痛觉，反而老者就像踢在钢板上面，疼的他收回脚后都有点不自然的跛脚。

    这小子，简直就是歪理！

    然而老者痛心疾首的同时却又感到无比欣慰。

    这才是他的兵！

    狠狠盯着林轩看了将近半分钟，老者最终无力摇摇头。

    “赶紧给老子滚，以后你如果仗着本事在社会上为非作歹，老子一定亲自拿着枪毙了你！”

    说完之后，老者头也不回的转身离去。

    “是！”

    林轩擦干眼泪，身体绷直宛如一杆标枪屹立在原地，抬手敬了个军礼！

    不舍的目送老首长离开，直至再也看不到，林轩这才深深叹了一声，眼神落寞的转身向外走去。

    “队长！”

    当林轩走出营房来到校场边时，一群魁梧笔挺的年轻军人顿时齐声大喝，一个个眼睛哭的都肿成了灯泡。

    这些都是他小分队的成员，桀骜不驯杀气腾腾，像出笼的凶兽。

    他们都是特种战士里精锐中的精锐，随便去到任何一支部队，都是佼佼者的存在。

    此刻，他们脸上写满了悲愤不舍。

    虽然队长违反军纪有错，但他是为了把自己的队员救回来，才越过国境线灭掉一整支印国特种部队，这种行为让所有兵痞们都发自内心觉得自豪狂热，更为队长鸣不平，觉得上面不该对队长做出那么严厉的处罚，将他赶出部队。

    “嚎个屁，老子又不是挂了，瞧瞧你们一个个的，都tm成了号丧的娘们儿。”林轩酸着鼻子骂了句。

    他不说话还好，一说话，大家嚎的更大声了。

    “队长你不要走！”

    “你要走了，我们怎么办啊！”

    “干脆大家都退伍吧，队长去哪里，我们就去哪里！”

    “好！”

    听到这里，林轩整张脸黑了下来。

    “都给老子闭上嘴！”

    “奶奶的，一个个反了是不是？”

    “居然还想着集体退伍，呵，你们这群牲口难道想给我按上一个教唆部下哗变的罪名，然后把老子送进军事法庭吗？”

    “我告诉你们，老子这次退伍回家娶媳妇儿，生活滋润着呢。”

    “啧啧，据说那位等了我十几年的媳妇，肤白貌美，水嫩水嫩的，胸大屁股大，回家后老子天天把脑袋枕在女乃子上面，你们这些孙子就羡慕我吧。”

    林轩气急败坏的大骂一阵，刚才可把他气坏了，以他对这群牲口的了解程度，集体退伍的事情还真干得出来。

    若真是如此，那问题可就严重了，尼玛自己会彻底沦为整个部队的罪人。

    至于他说回家娶媳妇儿的事儿，倒不是忽悠，而是真有其事。

    前不久那个把他养大的老流氓神出鬼没来到这个秘密基地，然后丢给他一块神奇玉佩和一张照片就走了，临走时还告诉林轩一个事情，就是老流氓在林轩很小的时候给他定了门婚约，现在人家姑娘已经出落长大了，让他抽空回去把婚结了。

    只是万万没有料到，还没等他荣归故里娶老婆，就被部队开除了。

    开除就开除吧，林轩对自己做的事情没有半点后悔，就算重来一次他还会这么干。

    就如他之前说过的那样，男人一生必须守护的四样东西———脚下的土地，家里的父母，怀中的女人，身边的兄弟！

    守护脚下的土地，是他作为军人的职责，哪怕退伍了，也深深印刻在他骨髓里，就算回到大都市，他都会一生践行。

    守护家里的父母，自幼父母双亡的他，如今已经没有双亲在世，倒是有个强到变态的老流氓，林轩一身本事就是那个老流氓教的，哪怕林轩现在的强大实力，在老流氓面前也依旧不够看，让他很是郁闷。

    后面的两点，对林轩来说自然更不是问题。

    “可是，队长……”

    听到林轩是回家娶老婆，而且还有个等了他十几年的未婚妻，一群兵痞心里均为老大感到高兴，可依旧不舍他的离去。

    林轩神色严肃摆手，“好了别再说了，我希望你们记住，龙牙不是某一个人，而是屹立不倒百折不弯的华夏军魂，别忘了你们背后守护的东西，我们的口号是什么！”

    “战时用我！用我必胜！”

    一众兵痞狂吼，声震九霄，良久回响在茫茫大山中。

    一道道沉重如山岳的嘶吼声，穿透长空震撼人心，杀气叱咤，怕是任何魑魅魍魉邪魔鬼怪都会吓得退避三舍。

    满意的点了点头，林轩深深看了眼每一张面孔，继而大声喝道：

    “很好！全体都有——！”

    唰！

    众人立正，整齐划一！

    “目标苍山，一百公斤来回负重跑！”

    林轩声音落下，但是往日对他信若神明的一众兵痞，却红着眼睛纹丝不动。

    因为他们知道，一旦转身就意味着别离，这一别，有可能是永别，这一辈子不知道还有没有见面的可能。

    “怎么，老子还没有退伍，你们就开始不听我的命令！”林轩冷下脸怒吼道。

    面对林轩那凌厉的锋芒，一众兵痞眼泪涌出，接着大吼“是”，一个个步伐沉重凌乱的后转，扯开嗓子唱起“兄弟无数”，背对着林轩往距离此地二十公里的苍山跑去。

    殊不知，在所有队员转身的刹那，眼神冷漠锋利的林轩同样也是眼泪哗哗的疯狂涌出。

    “再见了，我的兄弟！”

    林轩说着举起手，朝那面飘扬在校场中央的五星红旗敬了重重的军礼，随即转身头也不回的坐上一辆车离去。

    只是，车子刚开出基地没多久，便被一道风姿绰约的美丽身影拦住。

    唐念薇！

    林轩刚来龙牙时的美女上司。</p>"},
            Chapter{ name: "第二章";source:"http:"; str: " 车停下，林轩看到拦路女人，不由露出苦笑。

    翻身跳出车舱，他硬着头皮走向那个英气飒爽的美艳女人。

    作为龙牙乃至整个军队最美的女人，唐念薇如同女神般的存在，一身轻巧的女式紧身军装，将她婀娜的身材勾勒的淋漓尽致，胸口傲然挺立，几乎破衣而出，让人看着忍不住想要掌控。

    如墨般乌黑的长发，被她扎成一个优美的马尾辫，从胸口落到腰际，两条纤细长腿宛如灵蛇般妖娆，静静站在那里，宛如遗世独立冷傲不可亵渎的谪仙。

    就是这双看似妖娆动人的大腿，却蕴含着极具爆发性的恐怖力量，林轩好几次差点被这条腿弄得断子绝孙，起因是这货胆大包天去摸这条腿，甚至还一路往上摸到屁股。

    这种隐秘，恐怕整个龙牙部队除了当事人两个，不会有第三个人知道。

    毕竟唐念薇这个女军官非但武力值爆表，而且还有强大背景，据说家族是京城某个红色豪门，面对这种脾气火爆且有背景的女人，饶是她长得再漂亮，迄今为止也没几个人敢对她做出过火的举动。

    “老首长怎么说？”唐念薇开口问道，语气平淡，黑眸如同万年雪山里的一泓冷泉，让靠近她的人，都忍不住心生怯意，因为她实在太冷了，冷的叫人心里发慌。

    “开除呗，还能怎么说。”林轩满不在乎的耸耸肩，仿佛诉说着一件事不关己的小事。

    说话的时候，他的眼睛却不老实的在唐念薇鼓鼓饱满的胸脯欣赏着，呵呵坏笑一脸欠抽。

    “你这种混蛋，早就该从军队里清出去！”看了他一眼，对于林轩色眯眯的举动，唐念薇似乎早就习以为常，纵然心里恨得牙痒痒，但也拿他没办法。

    这混蛋刚来龙牙没多久的时候，唐念薇还能想怎么揍就怎么揍，可是仅仅只过了半年时间，情况就反转过来了，现在想起来，她的屁股依稀有种火辣感。

    “嘿嘿，我如果一开始被清出去，谁来给你按摩，谁来给你普及七十二种姿势，十八般手法……”林轩叼着烟，嬉皮笑脸的走到唐念薇身躯旁边，贪婪呼吸着从这女人身上散发出的味道，带着一股淡淡的女乃香，让他百闻不厌，甚至每每都会滋生躁动不安分的情绪。

    说话间，他的目光更是直接来到唐念薇那挺翘的丰臀，这个世界估计只有他，才切身体会到那里是何等的丰满和弹性。

    这娘们儿娶回家绝对能生儿子。

    嘭！

    林轩话音刚落，人就被一记力道狂猛的大腿，给抽飞出去，轰隆一声砸在七八米远的地面上。

    “嘶！老板厉害，不过要是刚才角度再偏一点，你以后的人生‘性’福可就没了啊！”林轩捂着小腹龇牙咧齿抽冷气，嘴里依旧贱贱的眉开眼笑瞎咧咧，尤其在某个字上更是加重了语气。

    “滚！你就是个彻彻底底的混账王八蛋！”

    唐念薇俏脸一阵红，一阵白，狠狠盯着林轩，美眸中闪着深深的怒火，咒骂一声，然后气的直接转身走人。

    都这个时候了，被开除了，这家伙还有心情满嘴胡说八道不正经，什么七十二种姿势，十八般手法乱七八糟的，这家伙脑子里都装了些什么？

    男人果然是下半身思考的动物，这话说得一点都没错。

    这让本就心情很糟糕的她更加恼火，干脆直接走人来个眼不见为净。

    “呵呵……”

    目送唐念薇的倩影消失，林轩苦笑一声，脸上种种猥琐轻浮却在瞬间消失不见，抱着头脸上流露出撕裂心肺的痛苦、落寞和无奈。

    “没错，我就是个混账王八蛋，彻底忘了我吧。”

    “你出身名门，未来前程一片光明，而我只是一个被开除的老百姓，根本配不上你。”

    “唐念薇，这才是你和我最好的结局。”

    自嘲的笑了一声，林轩拍了拍身上的灰尘，从地上站起来，随即转身朝那辆军用猛士车走去。

    原来，刚才他的所有混蛋举动，其实是故意为之。

    目的就是让唐念薇对他彻底死心，断了两人之间那剪不断的关系。

    这也挺好的，自己离开部队回家履行师傅给自己订下的婚约，当个小老百姓平平淡淡的度过一生。

    而唐念薇无论是个人条件，还是强大家世，未来的丈夫肯定不会差的，不是出身豪门的青年俊彦公子哥，就是前途无量的某个政界新星，生活一定很美满。

    反观自己，除了那点在唐念薇家人眼里微不足道的退伍费，就只剩下江城那间破房子了，比起那些人什么也不是。

    但是就在他走出几步，就要上车离开时，身后突然响起一个声音。

    “林轩！”

    “你个王八蛋，给我站住！”

    是唐念薇的声音，她不知道什么时候又回来了。

    或者说根本就没走，而是偷偷躲在什么地方看着林轩。

    娇声怒骂中，她如同一道香风狠狠撞进了林轩怀里，冷傲绝尘的美丽脸颊滚落泪珠。

    “你怎么又回来了。”

    林轩嘴里苦涩，抱着唐念薇柔软的身体，那呼之欲出的两座圣女峰更是狠狠挤压着他的胸口，传来惊人的弹性，瞬间被浓郁诱人的芳香环绕。

    五年了，这还是他第一次完完整整将唐念薇抱在怀里，之前每一次都几乎是刚刚碰到，就被这妞儿给掀翻暴揍。

    可是此时，他却没有半点那方面的亢奋念头，有的只是无奈。

    他知道自己刚才的所作所为，并没有骗过唐念薇。

    “你这个大傻子！自作聪明的笨蛋！你以为那样就能让我和你之间彻底划清界限吗？我告诉你，太晚了！”

    “都怪你总是招惹我，如果不是你一次一次招惹我，我根本就不会认识你这个混蛋色痞，都是你害的，都是你害的，害得我现在整个心都是你的……唔……”唐念薇冷艳的俏脸浮出大片潮红，娇滴滴的几乎快滴血，两只白皙玉手不断在林轩胸口捶打。

    谁能想到，这位平日脾气火爆不苟言笑的冰冷女军官，居然也出现如此娇媚小女人的一面。

    可是，还不等她把心中所有的幽怨和愤怒发泄出来，就被由惊到喜的林轩呵呵傻笑着动作粗鲁的凑上去，重重吻在这个全军最美女人的妖艳红唇上面，一双大手更是紧紧搂着她的纤腰，几乎勒的她无法呼吸，仿佛要将其揉进身体。

    他何尝不喜欢这个女人，想要占有她，但是自己已经被部队开除了，昔日再多的荣耀和辉光都已成为过去，现在只是普通老百姓一个，配不上她这种出身顶级红色豪门的公主，呵呵，有时候人生就是如此无奈。

    一边霸道粗鲁的贪婪亲吻着，林轩的双手也是不安分的上下游走，进入那片他垂涎了五年都没能得逞的两座圣地。

    就当是最后的疯狂吧。

    几分钟后，两人四目相对，唐念薇似乎回过神，然后红着脸色气呼呼一把将林轩狠狠推开。

    “色狼！”

    说着她飞快把凌乱的胸口整理好，没好气的白了林轩一眼，然后直接扭着蛮腰转身快速离去，不过远远却是传来她杀气滚滚的冷哼。

    “王八蛋，要是你敢忘了我，小心老娘打断你第三条腿！”

    听到这句话，原来还咂着嘴巴一脸意犹未尽的林轩，瞬间感到凉飕飕，下意识夹紧了双腿。

    良久才笑呵呵的把那只抓过大白兔的手放在鼻尖，轻嗅着上面残留的唐念薇的独特芳香，依稀还能感受到那个丰硕的柔软热度。

    “放心，我不会忘了你，我们是战友，不过我希望你最好能忘了我这个王八蛋。”

    林轩站在原地，看着唐念薇离去的方向，停留了好一会儿，最终心情无比复杂的带着苦笑深深一叹，然后转身回到车上离开这片莽莽大山。

    大概过了七八个小时，他才回到长大的地方。

    江城。

    江城位于华夏中部，是一个经济发达的繁华城市。

    林轩一路从火车站走出来，沿途发现以前低矮的房屋，此时全被一栋栋摩天大楼所代替，规划整齐的街道，宽阔的马路，城市的绿色……

    翻天覆地的变化，一时让他找不到回家的路了。</p>"}
        ]

    }
    Rectangle{
        id:fonter;
        width: parent.width;
        height: 15;
        color: backcolor;
        z:3
        Text {
            anchors.left: parent.left;
            anchors.margins: 2
            id: read
            text: qsTr(readCatalog.chartAt(readCatalog.currentChart).name);
            font.pixelSize:10
            color: fontcolor
        }
    }
    Rectangle{
        width: 400;
        height: parent.height-footer.height-fonter.height;
        anchors.top: fonter.bottom;
        color: backcolor
        Flickable {

            id: view
            contentX: width;
            contentHeight:root.height>readerText.height?root.height:readerText.height
            width: parent.width;
            height: parent.height;

            property var isSetting: 0
            //y:mouse.y-contentY


            Rectangle{
                width: parent.width;
                height: parent.height;
                color: "transparent";
                TextArea {
                    id:readerText;
                    width: parent.width
                    readOnly: true;
                    color: fontcolor;
                    text: readCatalog.chartAt(readCatalog.currentChart).str

                    wrapMode: Text.WrapAnywhere
                    onTextChanged: {
                        view.contentHeight=readerText.height;
                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            console.log();
                            if(footSetter.isBrightNess==1 && mouseY%parent.height<root.height-showBrightNess.height){
                                    footSetter.isBrightNess=0;
                            }
                            else if(footSetter.isSetting==1&&  mouseY%parent.height<root.height-showSettingBottom.height){
                                footSetter.isSetting=0;
                            }

                            else if(view.isSetting==1 &&mouseY%root.height>fontSetter.height  && mouseY%root.height<root.height-footSetter.height){
                                   view.isSetting=0;
                            }
                            else if(footSetter.isCatalogView==1 && mouseX>showCatalogs.width){
                                    footSetter.isCatalogView=0;
                            }
                            else if(view.isSetting==0&& mouseX>width/2-width/5*1 && mouseX< width/2+width/5*1){
                                    view.isSetting=1;
                                    showFont.start();
                                    showFoot.start();
                            }

                        }
                    }
                }
            }
        }
    }
    Rectangle{
        id:footer;
        width: parent.width;
        height: 15;
        color: backcolor;
        anchors.bottom: root.bottom;
        Text {
            color:backcolor;
            anchors.left: parent.left;
            height: parent.height
            anchors.leftMargin: 5;
            id: currentRead;
            font.pixelSize: 10;
            font.italic: true;
            text: qsTr((readCatalog.currentPage/(readCatalog.chartCount()+0.0)).toString());
        }
        Rectangle{
            width: 50;
            height: parent.height;
            anchors.right: parent.right;
            anchors.rightMargin: 5;
            color: backcolor;
            Text{
                anchors.left: parent.left;
                text: Date().toString();
                color: fontcolor;
                font.pixelSize: 10
            }

        }

    }
    Rectangle{
        id:fontSetter;
        width: parent.width;
        height: 40;
        visible: view.isSetting;
        opacity: 0.9
        z:4;
        //anchors.top: parent.top;
        color: footColor
        Rectangle{
            width: parent.width-anchors.rightMargin-anchors.leftMargin;
            height: parent.height-anchors.topMargin-anchors.bottomMargin;
            anchors.top: parent.top;
            anchors.right: parent.right;
            anchors.left: parent.left;
            anchors.bottom: parent.bottom;
            anchors.bottomMargin: 10;
            anchors.topMargin: 10;
            anchors.rightMargin: 20;
            anchors.leftMargin: 20;
            color: "transparent";
            RowLayout{
                width: parent.width;
                height: parent.height;
                anchors.fill: parent;
                //左键头 表示返回
                Rectangle{
                    height: parent.height;
                    width: 20;
                    color: "transparent"
                    Image {
                        anchors.fill: parent;
                        source: "../Images/back.png"
                    }


                }
                Rectangle{
                    width: 100;
                    height: parent.height;
                    color: "transparent";


                }
                Rectangle{
                    id:buyButton;
                    height: parent.height;
                    width: 40;
                    radius: 8;
                    color: "transparent"
                    Text {
                        anchors.fill: parent;
                        text: qsTr("购买")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter;
                        color: "#FF4500"
                        font.pixelSize: 10;
                    }
                    border.color: "#FF4500"

                }
                Rectangle{
                    id:giftButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../Images/giftButton.png"
                       }
                }
                Rectangle{
                    id:headsetButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../Images/HeadsetButton.png"
                       }
                }
                Rectangle{
                    id:listButton;
                       width: 25;
                       height: parent.height;
                       color: "transparent";
                       Image {
                           anchors.fill: parent;
                           source: "../Images/listButton.png"
                       }
                }
            }

        }
        ParallelAnimation{
            id: showFont;
            PropertyAnimation{
                id: showFontY;
                target: fontSetter;
                from:root.height+footSetter.height;
                to:root.height-footSetter.height;
                duration: 1000
            }
            PropertyAnimation{
                id: showFontOpacy;
                target: fontSetter;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
    Rectangle{
        id:footSetter;
        width: parent.width;
        height: 100;
        visible: view.isSetting;
        color: footColor;
        property var isCatalogView: 0       //目录是否显示
        property var isBrightNess: 0
        property var isNeight: 0
        property var isSetting: 0
        RowLayout{
                id:process;
                height: 50;
                anchors.top: parent.top;
                anchors.left: parent.left;
                anchors.leftMargin: 20;
                anchors.right: parent.right;
                anchors.rightMargin: 20;
                Rectangle{
                    width: 50;
                    height: 20;
                    color: "transparent"
                    Text {
                        color: "white"
                        text: qsTr("上一章")

                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            if(readCatalog.currentChart<1){

                            }
                            else{
                                readCatalog.currentChart--;
                                console.log(view.originX,view.originY);
                                view.contentX=0;
                                view.contentY=0;
                            }


                        }
                    }
                }
                Rectangle{
                    height: 50;
                    width: 200;
                    color: "transparent"
                    Slider{
                        width: parent.width;
                        from:0;
                        to:100;
                        stepSize:1

                    }
                }
                Rectangle{
                    width: 50;
                    height: 20;
                    color: "transparent"
                    Text {
                        color:"white"
                        text: qsTr("下一章")

                    }
                    MouseArea{
                        anchors.fill: parent;
                        onClicked: {
                            if(readCatalog.currentChart>=readCatalog.chartCount()){

                            }
                            else{
                                readCatalog.currentChart++;
                                view.contentX=0;
                                view.contentY=0;
                            }

                        }
                    }
                }
        }
        RowLayout{
            anchors.bottom: parent.bottom;
            anchors.bottomMargin: 10;
            anchors.left: parent.left;
            anchors.leftMargin: 40;
            anchors.right: parent.right;
            anchors.rightMargin: 40;
            height: 40;


            // spacing:10;
            SettingButton{
                id:catalog;
                width: 30;
                height: 40;
                buttonText :qsTr("目录")
                buttonIconPath:"../Images/catalog.png";
                buttonBackColor: "transparent";
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        showCatalogAnimation.start();
                        footSetter.isCatalogView=1;
                        view.isSetting=0;
                    }
                }
            }
            SettingButton{
                id:brightness
                width: 30;
                height: 40;
                buttonText: qsTr("亮度")
                buttonIconPath: "../Images/brightness.png"
                buttonBackColor: "transparent"
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        showBrightNessAnimation.start();
                        footSetter.isBrightNess=1;
                        view.isSetting=0;

                    }

                }
            }
            SettingButton{
                id:nightModel
                width: 30;
                height: 40;
                buttonText: qsTr("夜间")
                buttonIconPath: "../Images/nightmodel.png"
                buttonBackColor: "transparent"
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        footSetter.isNeight=!footSetter.isNeight;
                        nightModel.buttonIconPath=footSetter.isNeight?"../Images/nightmodel.png":"../Images/brightness.png"

                    }

                }
            }
            SettingButton{
                id:set;
                width: 30;
                height: 40;
                buttonText: qsTr("设置")
                buttonIconPath: "../Images/set.png"
                buttonBackColor: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        footSetter.isSetting=!footSetter.isSetting;
                        showSettingBottomAnimation.start();
                        view.isSetting=0;
                    }
                }
            }
        }
        ParallelAnimation{
            id:showFoot;
            PropertyAnimation{
                id: showFootY;
                target: footSetter;
                property:"y";
                from:root.height+footSetter.height;
                to:root.height-footSetter.height;
                duration: 1000
            }
            PropertyAnimation{
                id: showFootOpacy;
                target: footSetter;
                property:"opacity";
                from:0
                to:0.9
                duration: 1
            }
        }
    }

    PopupCatalog{
        id:showCatalogs;
        height: parent.height;
        width: parent.width-1.0/5.0*parent.width
        x:-width;
        z:3;
        visible: footSetter.isCatalogView;
        opacity: 0;

        ParallelAnimation{
            id:showCatalogAnimation;
            PropertyAnimation{
                id: showCatalogX;
                target: showCatalogs;
                property:"x";
                from:-width;
                to:0;
                duration: 1000
            }
            PropertyAnimation{
                id: showCatalogOpacty;
                target: showCatalogs;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
    BrightNess{
        id:showBrightNess;
        height: parent.height*1/4.0;
        width: parent.width;
        visible:footSetter.isBrightNess;
        color: footColor
        z:2;
        y:root.height+height;
        ParallelAnimation{
            id:showBrightNessAnimation;
            PropertyAnimation{
                target: showBrightNess ;
                property:"y";
                from:root.height+showBrightNess.height;
                to:root.height-showBrightNess.height;
                duration: 1000
            }
            PropertyAnimation{
                target: showCatalogs;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }


    }
    SettingBottom{
        id:showSettingBottom;
        visible: footSetter.isSetting
        width: parent.width;
        backgroundColor:fontcolor
        fontSize:root.fontSize;
        height: 200;
        y:root.height+height;
        z:2;
        ParallelAnimation{
            id:showSettingBottomAnimation;
            PropertyAnimation{
                target: showSettingBottom ;
                property:"y";
                from:root.height+showSettingBottom.height;
                to:root.height-showSettingBottom.height;
                duration: 1000
            }
            PropertyAnimation{
                target: showSettingBottom;
                property:"opacity";
                from:0
                to:0.9
                duration: 1000
            }
        }
    }
}

import QtQuick 2.0
import QtQuick.Controls 2.5
import "./HomeView"

Item {
    StackView{
        id:homestackview
        initialItem: starthomeview
    }
    Component{
        id:starthomeview
        HomeView{}
    }
    Component{
        id:famous
        SortView{
            sorttitle: qsTr("经典名著")
        }
    }
    Component{
        id:poem
        SortView{
            sorttitle: qsTr("唐诗宋词")
        }
    }
    Component{
        id:textbook
        SortView{
            sorttitle: qsTr("课程教材")
        }
    }
    Component{
        id:reference
        SortView{
            sorttitle: qsTr("参考书籍")
        }
    }
    Component{
        id:practice
        SortView{
            sorttitle: qsTr("实验手册")
        }
    }
    Component{
        id:news
        SortView{
            sorttitle: qsTr("时事新闻")
        }
    }



    function load_page(page) {
            switch (page) {
            case 0:
                homestackview.push(famous);
                break;
            case 1:
                homestackview.push(poem);
                break;
            case 2:
                homestackview.push(textbook);
                break;
            case 3:
                homestackview.push(reference);
                break;
            case 4:
                homestackview.push(practice);
                break;
            case 5:
                homestackview.push(news);
                break;
            }
        }

}

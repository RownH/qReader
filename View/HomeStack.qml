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
        id:sortbooks
        SortBooks{}
    }


    function load_page(page) {
            switch (page) {
            case 0:
                homestackview.push(sortbooks);
                break;
            case 1:
                homestackview.push(sortbooks);
                break;
            case 2:
                homestackview.push(sortbooks);
                break;
            case 3:
                homestackview.push(sortbooks);
                break;
            case 4:
                homestackview.push(sortbooks);
                break;
            case 5:
                homestackview.push(sortbooks);
                break;
            }
        }

}

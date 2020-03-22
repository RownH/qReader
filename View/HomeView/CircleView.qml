import QtQuick 2.7

Item {
    id: root
    implicitWidth: rootwindow.width
    implicitHeight: 0.3*rootwindow.height
//    anchors.top: searchBar.bottom

    property alias count: pathView.count
    property alias currentIndex: pathView.currentIndex
    property alias currentItem: pathView.currentItem
    property alias dragging: pathView.dragging

    // visibleItemCount must be an odd number
    property int visibleItemCount: 1
    property variant model
    property Component delegate


    PathView {
        id: pathView
        anchors.fill: parent

        dragMargin: height /2

        model: root.model
        delegate: root.delegate
        path: Path {
            startX: -pathView.width / 2
            startY: pathView.height / 2

            PathLine {
                x: pathView.pathItemCount * pathView.width - pathView.width / 2
                y: pathView.height / 2
            }
        }

        pathItemCount: visibleItemCount + 1
        // make currently selected always in the middle of path
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        clip: true
    }
}

import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

// singleton type in use
import coffee.style 1.0

PageTheme {
    id:bootPage
    property double startTime: 0

    Timer {
        id: bootTimer
        interval: 1000
        repeat: false
        running: false
        triggeredOnStart: true
        onTriggered: {
            pageStack.push("qrc:/app/MainMenu.qml")
        }
    }

    Rectangle {
        id: bootRect
        anchors.top: parent.top
        width: 50
        height: 50
        MouseArea {
            anchors.fill: parent
            onClicked: {
                bootTimer.start();
            }

        }


    }




}

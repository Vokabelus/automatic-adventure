import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

// singleton type in use

PageTheme {
    id:mainPage

    StatusBar {
        id: statusBar
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter

        }

    }

}

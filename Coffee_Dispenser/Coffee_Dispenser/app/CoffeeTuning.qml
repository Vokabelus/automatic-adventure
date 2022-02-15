import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

import coffee.style 1.0

PageTheme {
    id:coffeeTuningPage

    StatusBar {
        id: statusBarTunningPage
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter

        }

    }

    Rectangle{
        id:iconRect
        anchors{
            left: parent.left
            top: statusBarTunningPage.bottom
            leftMargin: 15
            rightMargin: 15
            bottomMargin: 15
            topMargin: 15
        }
        opacity: 0.8
        height: parent.height - 150
        width: parent.width/2
        color: MyStyle.accentBackground
        Image {
            id: iconImageTuning
            width: 150
            height: 150
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
            source: systemController.drinkIconType
        }
        Text { text: systemController.drinkType; color: MyStyle.textColor;
            anchors.top: iconImageTuning.bottom
            anchors.horizontalCenter: parent.horizontalCenter }

    }

    Rectangle{
        id:settingsRect
        anchors{
            right: parent.right
            top: statusBarTunningPage.bottom
            leftMargin: 15
            rightMargin: 15
            bottomMargin: 15
            topMargin: 15
        }
        height: parent.height - 150
        width: parent.width/2
        color: "black"

    }


}

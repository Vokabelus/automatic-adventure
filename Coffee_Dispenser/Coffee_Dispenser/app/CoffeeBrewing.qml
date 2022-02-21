import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

import coffee.style 1.0

PageTheme {
    id:coffeeBrewingPage

    StatusBar {
        id: statusBarBrewingPage
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter

        }
    }

    Rectangle{
        id:iconRectBrew
        anchors{
            left: parent.left
            top: statusBarBrewingPage.bottom
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
            id: iconImageBrew
            width: 150
            height: 150
            anchors{
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
            source: systemController.drinkIconType
        }
        Text { text: systemController.drinkType; color: MyStyle.textColor;
            anchors.top: iconImageBrew.bottom
            anchors.horizontalCenter: parent.horizontalCenter }

    }

    Rectangle{
        id:settingsRectBrew
        anchors{
            right: parent.right
            top: statusBarBrewingPage.bottom
            leftMargin: 15
            rightMargin: 20
            bottomMargin: 15
            topMargin: 15
        }
        height: parent.height - 150
        width: parent.width/2
        color: "black"

        BusyIndicator {
            id: dispensingBusyIndicator
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            width: 281
            height: 281
            //color: MyStyle.accentBackground
        }

        Row{
            id:navigationButtonsBrew
            anchors.bottom: parent.bottom
            width: parent.width
            RoundButton{
                id:startButton
                height: 60
                width: 250
                radius: 60
                onClicked: {
                    startButtonRect.color = "red"
                    //pageStack.push("qrc:/app/CoffeeBrewing.qml")
                }
                Rectangle{
                    id:startButtonRect
                    width: parent.width
                    height: parent.height
                    radius: parent.radius
                    color: MyStyle.accentBackground
                    Image {
                        id: startButtonIcon
                        width: 50
                        height: 50
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/icons/stop_button.png"
                    }

                }
            }
            RoundButton{
                id:backButton
                height: 60
                width: 100
                radius: 30
                anchors.right: parent.right
                onClicked: pageStack.push("qrc:/app/CoffeeTuning.qml")
                Rectangle{
                    id:homeButtonRect
                    width: parent.width
                    height: parent.height
                    radius: parent.radius
                    color: MyStyle.accentBackground

                    Image {
                        id: homeButtonIcon
                        width: 50
                        height: 50
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/icons/back_button.png"
                    }

                }
            }
        }
    }
}




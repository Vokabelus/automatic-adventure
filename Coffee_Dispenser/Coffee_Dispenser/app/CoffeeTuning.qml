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
            rightMargin: 20
            bottomMargin: 15
            topMargin: 15
        }
        height: parent.height - 150
        width: parent.width/2
        color: "black"

        Column{
            id: column
            anchors.fill: parent
            //spacing: 4
            anchors{
                leftMargin: 35
                topMargin: 40
            }
            Row{
                id: coffeeSelection
                anchors.top: parent.top
                anchors.topMargin: 30
                MySlider {
                    id: sliderCoffee
                    from: 0
                    to: 4
                    value: 1
                }
                Image {
                    id: coffeBean
                    width: 35
                    height: 35
                    anchors.left: sliderCoffee.right
                    anchors.leftMargin: 5
                    source: "qrc:/icons/coffee-beans.png"
                }
            }


            Row{
                id: milkselection
                anchors.top: coffeeSelection.bottom
                anchors.topMargin: 60
                MySlider {
                    id: sliderMilk
                    from: 0
                    to: 4
                    value: 2
                }
                Image {
                    id: milk
                    width: 35
                    height: 35
                    anchors.left: sliderCoffee.right
                    anchors.leftMargin: 15
                    source: "qrc:/icons/milk.png"
                }
            }

            Row{
                id: sugarSelection
                anchors.top: milkselection.bottom
                anchors.topMargin: 30
                MySlider {
                    id: sliderSugar
                    from: 0
                    to: 4
                    value: 1
                }
                Image {
                    id: sugar
                    width: 35
                    height: 35
                    anchors.left: sliderCoffee.right
                    anchors.leftMargin: 15
                    source: "qrc:/icons/sugar_cube.png"
                }
            }
            Row{
                id:navigationButtons
                anchors.bottom: parent.bottom
                width: parent.width
                RoundButton{
                    id:startButton
                    height: 60
                    width: 250
                    radius: 60
                    onClicked: {
                       startButtonRect.color = "green"
                       pageStack.push("qrc:/app/CoffeeBrewing.qml")
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
                            source: "qrc:/icons/start_button.png"
                        }

                    }
                }
                RoundButton{
                    id:homeButton
                    height: 60
                    width: 100
                    radius: 30
                    anchors.right: parent.right
                    onClicked: pageStack.push("qrc:/app/MainMenu.qml")
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
                            source: "qrc:/icons/home_button.png"
                        }

                    }
                }
            }
        }
    }
}

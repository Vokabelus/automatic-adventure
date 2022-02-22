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

        ColumnLayout{
            id: column
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            spacing: 0
            anchors.leftMargin: 30
            anchors.topMargin: 25
            Layout.alignment:Qt.AlignVCenter & Qt.AlignHCenter
            RowLayout{
                id: coffeeSelection
                Layout.row : 1
              MySlider {
                    id: sliderCoffee
                    Layout.alignment:Qt.AlignHCenter
                    from: 0
                    to: 4
                    value: 1
                }
                Image {
                    id: coffeBean
                    Layout.preferredWidth:35
                    Layout.preferredHeight: 35
                    Layout.alignment:Qt.AlignRight
                    source: "qrc:/icons/coffee-beans.png"
                }
            }


            RowLayout{
                id: milkselection
                Layout.row : 2
                MySlider {
                    id: sliderMilk
                    //Layout.topMargin: 10
                    Layout.alignment:Qt.AlignHCenter
                    from: 0
                    to: 4
                    value: 2
                }
                Image {
                    id: milk
                    Layout.preferredWidth:35
                    Layout.preferredHeight: 35
                    Layout.alignment:Qt.AlignRight
                    source: "qrc:/icons/milk.png"
                }
            }

            RowLayout{
                id: sugarSelection
                Layout.row : 3
                MySlider {
                    id: sliderSugar
                    //Layout.topMargin: 10
                    Layout.alignment:Qt.AlignHCenter
                    from: 0
                    to: 4
                    value: 1
                }
                Image {
                    id: sugar
                    Layout.preferredWidth:35
                    Layout.preferredHeight: 35
                    Layout.alignment:Qt.AlignRight
                    source: "qrc:/icons/sugar_cube.png"
                }
            }

        }

    }

    Rectangle{
           id:navigationButtonsRect
           width: parent.width/2
           anchors.top: settingsRect.bottom
           anchors.right: settingsRect.right
           anchors.topMargin: 5
        RowLayout{
            id:navigationButtons
            Layout.fillWidth: true
            Layout.preferredWidth: parent.width
            width: parent.width
            RoundButton{
                id:startButton
                Layout.preferredWidth: 250
                Layout.preferredHeight: 60
                radius:60
                onClicked: {
                    startButtonRect.color = "green"
                    pageStack.push("qrc:/app/CoffeeBrewing.qml")
                }
                Rectangle{
                    id:startButtonRect
                    width:  parent.width
                    height: parent.height
                    radius: startButton.radius
                    color: MyStyle.accentBackground
                    Image {
                        id: startButtonIcon
                        width: 50
                        height: 50
                        anchors.verticalCenter:parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/icons/start_button.png"
                    }

                }
            }
            RoundButton{
                id:homeButton
                Layout.preferredWidth: 100
                Layout.preferredHeight: 60
                radius: 30
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

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}D{i:3}D{i:4}D{i:2}D{i:8}D{i:9}D{i:7}
D{i:11}D{i:12}D{i:10}D{i:14}D{i:15}D{i:13}D{i:6}D{i:5}D{i:20}D{i:19}D{i:18}D{i:23}
D{i:22}D{i:21}D{i:17}D{i:16}
}
##^##*/

import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtMultimedia 5.8
import Qt.labs.settings 1.0
import solid.broccoli 1.0
import QtQuick.Controls.Material 2.2
import "."

Page{
    id: page
    background: Rectangle {
        width: parent.width
        height: parent.height
        color: Style.pageBackground
    }

    property alias toolbarButtons: buttonsLoader.sourceComponent
    property alias toolbarTitle: titleLabel.text

    footer:Item {
        id: appFooter

        RoundButton{
            id: homeButton
            x: parent.width/2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            Layout.alignment: Qt.AlignBottom| Qt.AlignCenter
            Layout.preferredHeight:  Style.roundButtonHeight
            Layout.preferredWidth:   Style.roundButtonWidth
            icon.source:"qrc:/images/png/home_button.png"
            icon.width :Style.roundButtonWidth
            icon.height:Style.roundButtonHeight
            background: Rectangle {
                radius: Style.roundButtonRadius
                color: Style.roundButtonHome
            }

            onClicked: {
                pageStack.push("qrc:/MainPage.qml")
            }
        }
    }




    header: ToolBarTheme{
        id: toolBarTheme

        Layout.alignment: Qt.AlignRight

        Label {
            id: titleLabel
            anchors.horizontalCenter: parent.horizontalCenter
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight |Qt.AlignHCenter
            color: (PicturePage) ?  Style.pictureText :  Style.text
            elide: Text.ElideRight
            font.pointSize: 20

        }


        ColumnLayout{
            id: rightPanel
            anchors.right: parent.right
            width: parent.width /13
            height: parent.height
            spacing: 5
            RoundButton {
                id: backButton
                Layout.preferredHeight:  Style.roundButtonHeight
                Layout.preferredWidth:   Style.roundButtonWidth
                Layout.alignment: Qt.AlignRight| Qt.AlignTop
                icon.source:"qrc:/images/png/back.png"
                icon.width :Style.roundButtonWidth
                icon.height:Style.roundButtonHeight
                background: Rectangle {
                    radius: Style.roundButtonRadius
                    color: Style.buttonBackground
                }

                onClicked: {
                    if (stackView.depth > 1) {
                        stackView.pop()
                    }

                }

                Loader {
                    anchors.top: backButton.bottom
                    id: buttonsLoader
                }

            }
        }
        Rectangle {
            color: Style.pageBackground
            anchors.fill: parent
        }

    }


}





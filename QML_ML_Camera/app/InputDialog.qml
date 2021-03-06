import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2
import "."


Dialog{
    id:rootDialog
    property string label: "New item"
    property string hint: "value"
    property alias editText: editTextItem
    width:  800
    height: 400

    onVisibleChanged: {
        editTextItem.focus = true
        //editTextItem.selectAll()
    }

    Rectangle {
        id: inputTextPanel
        implicitWidth: parent.width
        implicitHeight: parent.height/3
        border.color: "white"
        color: "black"
        border.width: 0.5

        Layout.alignment: Qt.AlignCenter
        ColumnLayout {
            Text {
                id: labelItem
                text: label
                color: Style.text
                font.pointSize: 16
            }

            TextInput {
                id: editTextItem
                inputMethodHints: Qt.ImhNone

                text: hint
                color: Style.text
                font.pointSize: 20
            }
        }


    }

    RoundButton {
        id: okButton
        width:70
        height:70
        anchors.bottom: parent.bottom
        x: rootDialog.width - width*1.4
        Layout.alignment: Qt.AlignRight
        text: "\u2713" // Unicode Character 'CHECK MARK'
        onClicked: {
            accepted()
            rootDialog.close()
        }
    }


    RoundButton {
        id: cancelButton
        width:70
        height:70
        anchors.bottom: parent.bottom
        anchors.left: rootDialog.left
        x: width/10
        Layout.alignment: Qt.AlignLeft
        text: "\u2716" // Unicode Character 'Cancel'
        onClicked: {
            rejected()
            rootDialog.close()
        }
    }

    standardButtons: StandardButton.NoButton


}

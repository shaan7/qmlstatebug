import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

Window {
    title: "Doesnt work"

    Popup {
        id: popup

        Item {
            id: item3
            implicitWidth: 200
            implicitHeight: 100

            TextField {
                id: addressField
                text: btn.checked ? "connect" : ""
                onVisibleChanged: console.log("FIELD= " + visible)
            }

            Button {
                id: btn
                checkable: true
                text: checked
            }

            states: [
                State {
                    name: "loading"
                    when: !btn.checked

                    PropertyChanges { target: addressField; visible: false }
                }
            ]

            onStateChanged: console.log("STATE= " + state)
        }
    }

    Button {
        anchors { right: parent.right }
        text: "Popup"
        onClicked: popup.open()
    }
}

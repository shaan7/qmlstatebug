import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4

Item {
    Works {
        width: 300; height: 200
        Component.onCompleted: show()
    }

    DoesntWork {
        width: 300; height: 200
        Component.onCompleted: show()
    }
}

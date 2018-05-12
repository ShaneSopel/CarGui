import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {

    visible: true
        width: 800
        height: 480
        color: "#171616"
        title: qsTr("Car")

        property double needleAngle_tach: 0
        property double needleAngle_odo: 0
        id: mainpage
        Image {
            id: odometer
            x: 422
            y: 1
            width: 363
            height: 359
            source: "file:////home/shane/carGui/images/odometer.png"
        }
}

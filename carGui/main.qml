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

        Image {
            id: fuelgauge
            x: 325
            y: 313
            width: 150
            height: 150
            source: "file:////home/shane/carGui/images/fuelguage.png"
        }

        Image {
            id: tachometer
            x: 0
            y: 1
            width: 363
            height: 359
            source: "file:////home/shane/carGui/images/tachometer.png"

        }

        Image {
            id: needle_odo
            x: 529
            y: 30
            width: 152
            height: 192
            source: "file:////home/shane/carGui/images/needle.png"
            transform: Rotation {
                origin.x: 80
                origin.y: 128
                angle: needleAngle_odo
            }
            //Behavior on needleAngle {SpringAnimation { spring: 2; damping: 0.3; modulus: 360 }}
            smooth: true
        }

        Button {
            id: binplus_tach
            x: 0
            y: 306
            width: 61
            height: 54
            text: "+"
            onClicked: needleAngle_tach +=10
        }

        Button {
            id: binMinus_tach
            x: 67
            y: 306
            width: 64
            height: 54
            text: "-"
            onClicked: needleAngle_tach -=10
        }

        Image {
            id: needle_tach
            x: 116
            y: 30
            width: 149
            height: 192
            transform: [
                Rotation {
                    origin.x: 80
                    angle: needleAngle_tach
                    origin.y: 128
                }]
            source: "file:///" + encodeURIComponent("/home/shane/carGui/images/needle.png")
            smooth: true
        }

        Button {
            id: binplus_odo
            x: 663
            y: 306
            width: 61
            height: 54
            text: "+"
            onClicked: needleAngle_odo +=10
        }



        Button {
            id: binMinus_odo
            x: 736
            y: 306
            width: 64
            height: 54
            text: "-"
            onClicked: needleAngle_odo -=10
        }

        Image {
            id: rightsignal
            x: 422
            y: 270
            width: 47
            height: 37
            source: "file:////home/shane/carGui/images/turn_indicator.png"
        }


        Image {
            id: leftsignal
            x: 325
            y: 270
            width: 47
            height: 37
            source: "file:////home/shane/carGui/images/turn_indicator_left.png"
        }

        Image {
            id: needle_fuel1
            x: 364
            y: 326
            width: 87
            height: 74
            transform: [
                Rotation {
                    origin.x: 80
                    angle: needleAngle_odo
                    origin.y: 128
                }]
            source: "file:////home/shane/carGui/images/needle.png"
            smooth: true
        }

        Image {
            id: needle_fuel2
            x: 339
            y: 365
            width: 87
            height: 74
            rotation: -101
            transform: [
                Rotation {
                    origin.x: 80
                    angle: needleAngle_odo
                    origin.y: 128
                }]
            source: "file:////home/shane/carGui/images/needle.png"
            smooth: true
        }

        Loader
        {
            id:pageLoader
        }

        Button {
            id: audioButton
            x: 18
            y: 403
            width: 113
            height: 67
            text: qsTr("Audio ")

            onClicked: pageLoader.source = "audio.qml"
        }


}

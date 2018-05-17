import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import QtSensors 5.9

Window {

    visible: true
        width: 800
        height: 481
        color: "#171616"
        title: qsTr("Car")

        property double needleAngle_tach: 0
        property double needleAngle_odo: 0
        id: audiopage

        Loader
        {
            id:pageLoader
        }

        Button
        {
            id: audioButton
            x: 157
            y: 403
            width: 113
            height: 67
            text: qsTr("")
            iconSource: "file:////home/shane/carGui/images/music.png"

            onClicked: {
                            pageLoader.source = "audio.qml"
                       }
        }

        Button
        {
            id: diagnosticsButton
            x: 672
            y: 403
            width: 113
            height: 67
            text: qsTr("")
            iconSource: "file:////home/shane/carGui/images/diagnostics.png"
        }

        Button
        {
            id: settingsButton
            x: 529
            y: 403
            width: 113
            height: 67
            text: ""
            iconSource: "file:////home/shane/carGui/images/settings.png"
        }

        Button {
            id: homeButton
            x: 18
            y: 403
            width: 113
            height: 67
            text: ""
            iconSource: "file:////home/shane/carGui/images/home.png"
        }

        Button {
            id: play
            x: 91
            y: 274
            width: 60
            height: 60
            text: ""
            iconSource: "file:////home/shane/carGui/icons/play.png"
        }

        Button {
            id: pause
            x: 198
            y: 274
            width: 60
            height: 60
            text: ""
            iconSource: "file:////home/shane/carGui/icons/pause.png"
        }

        Button {
            id: rewind
            x: 307
            y: 274
            width: 60
            height: 60
            text: ""
            iconSource: "file:////home/shane/carGui/icons/rewind.png"
        }


        Button {
            id: forward
            x: 415
            y: 274
            width: 60
            height: 60
            text: ""
            iconSource: "file:////home/shane/carGui/icons/forward.png"
        }

        Button {
            id: share
            x: 521
            y: 274
            width: 60
            height: 60
            text: ""
            iconSource: "file:////home/shane/carGui/icons/share.png"
        }

        Image {
            id: foreground
            width: 800
            height: 230
            anchors.verticalCenterOffset: -119
            anchors.horizontalCenterOffset: 0
            source: "file:////home/shane/carGui/gfx/bar.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            ColumnLayout{
                id: container
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: foreground.implicitWidth - 80
                height: foreground.implicitHeight - 60

                RowLayout {
                    id: wrapper
                    anchors.fill: parent
            }

                Rectangle {
                    id: leftWapper
                    height: 126
                    width: 126
                    radius: 7
                    //transformOrigin: Item.Center
                    //Layout.minimumWidth: 1
                    //Layout.preferredWidth: -1

                    BorderImage {
                        id: coverBorder
                        anchors.rightMargin: 4
                        anchors.bottomMargin: 7
                        anchors.leftMargin: 4
                        anchors.topMargin: 7
                        source: "/home/shane/carGui/gfx/cover_overlay.png"
                        anchors.fill: parent
                        anchors.margins: 4
                        border { left: 10; top: 10; right: 10; bottom: 10 }
                        horizontalTileMode: BorderImage.Stretch
                        verticalTileMode: BorderImage.Stretch

                        Image {
                            id: coverPic
                            anchors.rightMargin: 2
                            anchors.bottomMargin: 0
                            anchors.leftMargin: 2
                            anchors.topMargin: 4
                            source: player.metaData.coverArtUrlLarge ? player.metaData.coverArtUrlLarge : "gfx/cover.png"
                            anchors.fill: coverBorder
                            anchors.margins: 2

                        }
                 }
          }
    }
 }

        Slider{
            x: 85
            y: 215
            width: 527
            height: 53
            Layout.fillWidth: true
            //audioPlayer: player
            // bgImg: "gfx/slider_background.png"
            // bufferImg: "gfx/slider_value_right.png"
            // progressImg: "gfx/slider_value_left.png"
            // knobImg: "gfx/slider_knob.png"
        }
}

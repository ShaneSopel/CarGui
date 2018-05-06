import QtQuick 2.0

Image {

    property double needleAngle: 0;

    id: needle
    x: 20
    y: 300
    width: 190
    height: 1
    source: "/home/shane/carGui/images/needle.png"
    transform: Rotation{origin.x:164; origin.y:22; angle:Angleneedle}
    Behavior on needleAngle {SpringAnimation { spring: 2; damping: 0.3; modulus: 360 }}
    smooth:true
}

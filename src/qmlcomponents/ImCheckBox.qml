/*
 * SPDX-License-Identifier: Apache-2.0
 * Copyright (C) 2022 Raspberry Pi Ltd
 */

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import RpiImager

CheckBox {
    Keys.onEnterPressed: toggle()
    Keys.onReturnPressed: toggle()

    indicator: Rectangle {
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height: 20
        implicitWidth: width
        implicitHeight: height
        radius: 2
        color: checked ? "#ff8f5d" : "transparent"  // background color
        border.color: checked ? "#ff8f5d" : "#25232b"
        border.width: 2

        Canvas {
            anchors.fill: parent
            visible: checked
            onPaint: {
                var ctx = getContext("2d")
                ctx.strokeStyle = "white"
                ctx.lineWidth = 2
                ctx.beginPath()
                ctx.moveTo(width * 0.25, height * 0.5)
                ctx.lineTo(width * 0.45, height * 0.75)
                ctx.lineTo(width * 0.75, height * 0.25)
                ctx.stroke()
            }
        }
    }
}

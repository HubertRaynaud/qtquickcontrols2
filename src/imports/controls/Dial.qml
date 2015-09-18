/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the Qt Quick Controls module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL3$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 3 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPLv3 included in the
** packaging of this file. Please review the following information to
** ensure the GNU Lesser General Public License version 3 requirements
** will be met: https://www.gnu.org/licenses/lgpl.html.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 2.0 or later as published by the Free
** Software Foundation and appearing in the file LICENSE.GPL included in
** the packaging of this file. Please review the following information to
** ensure the GNU General Public License version 2.0 requirements will be
** met: http://www.gnu.org/licenses/gpl-2.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.6
import QtQuick.Controls 2.0

AbstractDial {
    id: control

    implicitWidth: 100
    implicitHeight: 100

    Accessible.pressed: pressed
    Accessible.role: Accessible.Dial

    //! [background]
    background: Rectangle {
        color: control.Theme.backgroundColor
        radius: width / 2

        border.color: control.activeFocus ? control.Theme.focusColor : control.Theme.frameColor
    }
    //! [background]

    //! [handle]
    handle: Rectangle {
        id: handleItem

        x: background.width / 2 - handle.width / 2
        y: background.height / 2 - handle.height / 2
        transform: [
            Translate {
                y: -background.height * 0.35
            },
            Rotation {
                angle: control.angle
                origin.x: handle.width / 2
                origin.y: handle.height / 2
            }
        ]
        implicitWidth: 20
        implicitHeight: 20
        radius: width / 2
        border.width: control.activeFocus ? 2 : 1
        border.color: control.activeFocus ? control.Theme.focusColor : control.Theme.frameColor
        color: control.Theme.baseColor
    }
    //! [handle]
}
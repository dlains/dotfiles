// Bar.qml
import Quickshell
//import QtQuick.Layouts
//import Quickshell.Services.Pipewire
//import Quickshell.Hyprland

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 30

            ClockWidget {
                anchors.centerIn: parent
            }
        }
    }
}

    // RowLayout {
    // anchors {
    // left: parent.left
    // verticalCenter: parent.verticalCenter
    // leftMargin: 14
    // }

    // spacing: 8

    // Workspaces go here.
    // Repeater {
    // model: Hyprland.workspaces
    // Text {
    // text: modelData.id
    // color: "#cdd6f4"
    // }
    // }
    // }

    // RowLayout {
    // anchors {
    // centerIn: parent
    // }

    // spacing: 8

    // Clock goes here
    // Text {
    // text: Qt.formatDateTime(clock.date, "hh:mm")
    // color: "#94e2d5"
    // }
    // }

    // SystemClock {
    // id: clock
    // precision: SystemClock.Minutes
    // }

    // RowLayout {
    // anchors {
    // right: parent.right
    // verticalCenter: parent.verticalCenter
    // rightMargin: 14
    // }

    // spacing: 16

    // Status goes here
    // Text {
    // text: "vol " + Math.round((Pipewire.defaultAudioSink?.audio?.volume ?? 0) * 100) + "%"
    // color: "#e0af68"
    // }
    // PwObjectTracker {
    // objects: [Pipewire.defaultAudioSink]
    // }
    // }

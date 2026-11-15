import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import Quickshell.Hyprland

Scope {
    id: root

    // Add a property in the root
    property string time

    Variants {
        model: Quickshell.screens

        delegate: Component {

            PanelWindow {
                required property var modelData
                screen: modelData

                anchors {
                    top: true
                    left: true
                    right: true
                }

                // color: "#1a1b26"
                implicitHeight: 30

                Text {
                    anchors.centerIn: parent
                    text: root.time
                }
            }
        }
    }

    Process {
        // Give the process object an id so we can talk
        // about it from the timer.
        id: dateProc

        command: ["date"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: clock.text = this.text
        }
    }

    // Use a timer to run the process at an interval
    Timer {
        // 1000 miliseconds is one second
        interval: 1000

        // Start the timer immediately
        running: true

        // Run the timer again when it ends
        repeat: true

        // When the timer is triggered, set the running property of the
        // process to true, which reruns it if stopped.
        onTriggered: dateProc.running = true
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
}

// Bar.qml
import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import Quickshell.Hyprland

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

            color: "#16161e"
            implicitHeight: 30

            RowLayout {
                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 14
                }

                spacing: 8

                // Workspaces go here.
                Repeater {
                    model: Hyprland.workspaces
                    Text {
                        text: modelData.id
                        color: "#bb9af7"
                    }
                }
            }

            ClockWidget {
                anchors.centerIn: parent
            }

            RowLayout {
                anchors {
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 14
                }

                spacing: 16

                // Status goes here
                Text {
                    text: "vol " + Math.round((Pipewire.defaultAudioSink?.audio?.volume ?? 0) * 100) + "%"
                    color: "#ff9e64"
                }
                PwObjectTracker {
                    objects: [Pipewire.defaultAudioSink]
                }
            }
        }
    }
}

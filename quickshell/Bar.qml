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

            // Tokyo Night colors from https://colorvio.com/tokyo-night-colors
            property color colBg: "#1a1b26"
            property color colBgDark: "#16161e"
            property color colFg: "#c0caf5"
            property color colFgDark: "#a9b1d6"
            property color colComment: "#565f89"
            property color colHighlight: "#292e42"
            property color colTermBlack: "#414868"
            property color colRed: "#f7768e"
            property color colOrange: "#ff9e64"
            property color colYellow: "#e0af68"
            property color colGreen: "#9ece6a"
            property color colTeal: "#73daca"
            property color colCyan: "#7dcfff"
            property color colBlue: "#7aa2f7"
            property color colBlueBright: "#2ac3d3"
            property color colPurple: "#bb9af7"

            anchors {
                top: true
                left: true
                right: true
            }

            color: colBgDark
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
                        property bool isActive: modelData.focused

                        font {
                            pixelSize: 16
                            bold: true
                        }

                        text: modelData.id
                        color: isActive ? colFgDark : colComment

                        MouseArea {
                            anchors.fill: parent
                            onClicked: modelData.activate()
                        }
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
                    color: colOrange

                    font {
                        pixelSize: 16
                        bold: true
                    }
                }
                PwObjectTracker {
                    objects: [Pipewire.defaultAudioSink]
                }
            }
        }
    }
}

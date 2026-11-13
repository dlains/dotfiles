import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

PanelWindow {
  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 50
  
  Rectangle {
    anchors.fill: parent
    color: "#1a1b26"

    
    Text {
      anchors {
        left: parent.left
        verticalCenter: parent.verticalCenter
        leftMargin: 20
      }

      text: "left"
      color: "#cdd6f4"
    }

    Text {
      // Give the text an ID we can refer to elsewhere in the file.
      id: clock

      anchors.centerIn: parent

      // Create a process management object
      Process {
        // The command it will run, every argument is its own string
        command: ["date"]

        // Run the command immediately
        running: true

        // Process the stdout stream using a StdioCollector
        // Use StdioCollector to retrieve the text the process sends
        // to stdout
        stdout: StdioCollector {
          // Listen for the streamFinished signal, which is sent
          // when the process closes stdout or exits.
          onStreamFinished: clock.text = this.text // `this` can be omitted
        }
      }
    }

    RowLayout {
      anchors {
        right: parent.right
        verticalCenter: parent.verticalCenter
        rightMargin: 20
      }

      spacing: 10

      Text { text: "vol"; color: "#fab387" }
      Text { text: "bat"; color: "#9ece6a" }
      Text { text: "12:00"; color: "#cdd6f4" }
    }
  }
}

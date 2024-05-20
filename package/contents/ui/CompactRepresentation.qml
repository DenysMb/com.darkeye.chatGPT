import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import org.kde.ksvg as KSvg
import org.kde.plasma.plasmoid

Item {
    anchors.fill: parent
    
    KSvg.SvgItem {
        anchors.centerIn: parent
        width: parent.width < parent.height ? parent.width : parent.height
        height: width

        svg: KSvg.Svg {
            imagePath: Qt.resolvedUrl("assets/logo.svg");
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                plasmoid.expanded = !plasmoid.expanded
            }
        }
    }
}
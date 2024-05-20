import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import org.kde.ksvg 1.0 as KSvg
import org.kde.plasma.plasmoid 2.0

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
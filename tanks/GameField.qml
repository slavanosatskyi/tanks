import QtQuick 2.0

Rectangle {
    id: root

    anchors.fill: parent

    color: "#857F71"

    Rectangle {
        id: tanksField

        x: Props.tankImageSize
        y: Props.tankImageSize

        focus: true

        width: Props.fieldWidth
        height: Props.fieldHeight

        color: 'black'

        Keys.onUpPressed: TankPlayer1.movedUp()
        Keys.onDownPressed: TankPlayer1.movedDown()
        Keys.onLeftPressed: TankPlayer1.movedLeft()
        Keys.onRightPressed: TankPlayer1.movedRight()

        Player1 {
            id: player1

            x: TankPlayer1.x
            y: TankPlayer1.y
        }

        Connections  {
             target: TankPlayer1
             onMovedLeft: player1.jumpTo("moveLeft");
             onMovedRight: player1.jumpTo("moveRight");
             onMovedUp: player1.jumpTo("moveUp");
             onMovedDown: player1.jumpTo("moveDown");
         }
    }
}


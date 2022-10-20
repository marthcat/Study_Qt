import QtQuick 2.15

Item {
    Item {
        focus: true
        Keys.onPressed: {
            console.log("Loaded captured:", event.text);
            event.accepted = true;
        }
    }
}

pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root
    // readonly property string time: {
    //     Qt.formatDateTime(clock.date, "ddd MMM d hh:mm:ss AP t yyyy");
    // }

    function time(format = "ddd MMM d hh:mm:ss AP t yyyy"): string {
        return Qt.formatDateTime(clock.date, format);
    }

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
}

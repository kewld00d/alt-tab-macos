import Foundation
import Cocoa

class appSettingScriptCommand: NSScriptCommand {
    override func performDefaultImplementation() -> Any? {
        let named = self.evaluatedArguments!["named"] as! String
        let shortcutIndex = (Preferences.appsToShow[0] == .active) ? 0 : Preferences.appsToShow.count - 1 // if shortcut 1 = active, use it, else use last shortcut
        var val = ""
        if (named == "appsToShow") {val = Preferences.appsToShow[shortcutIndex].localizedString}
        else if (named == "showHiddenWindows") {val = Preferences.showHiddenWindows[shortcutIndex].localizedString}
        else if (named == "showFullscreenWindows") {val = Preferences.showFullscreenWindows[shortcutIndex].localizedString}
        else if (named == "showMinimizedWindows") {val = Preferences.showMinimizedWindows[shortcutIndex].localizedString}
        else if (named == "spacesToShow") {val = Preferences.spacesToShow[shortcutIndex].localizedString}
        else if (named == "screensToShow") {val = Preferences.screensToShow[shortcutIndex].localizedString}
        else if (named == "showTabsAsWindows") {val = Preferences.showTabsAsWindows ? "1" : "0"}
        return val
    }
}

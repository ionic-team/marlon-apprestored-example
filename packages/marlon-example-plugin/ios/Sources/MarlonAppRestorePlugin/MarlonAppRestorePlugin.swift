import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MarlonAppRestorePlugin)
public class MarlonAppRestorePlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "MarlonAppRestorePlugin"
    public let jsName = "MarlonAppRestore"
    public let pluginMethods: [CAPPluginMethod] = []

    private var observers: [NSObjectProtocol] = []

    override public func load() {
        observers.append(NotificationCenter.default.addObserver(forName: UIApplication.didEnterBackgroundNotification, object: nil, queue: OperationQueue.main) { [weak self] (_) in
            self?.sendPauseEventListenerData()
        })

        observers.append(NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: OperationQueue.main) { [weak self] (_) in
            self?.sendResumeEventListenerData()
        })

    }

    deinit {
        NotificationCenter.default.removeObserver(self)
        for observer in observers {
            NotificationCenter.default.removeObserver(observer)
        }
    }

    @objc func sendPauseEventListenerData() {
        self.notifyListeners("pause", data: ["pause": true])
    }

    @objc func sendResumeEventListenerData() {
        self.notifyListeners("resume", data: ["resume": true]);
    }

}

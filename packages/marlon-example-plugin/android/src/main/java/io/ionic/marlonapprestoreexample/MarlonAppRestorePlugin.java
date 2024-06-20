package io.ionic.marlonapprestoreexample;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "MarlonAppRestore")
public class MarlonAppRestorePlugin extends Plugin {

    private boolean hasPausedEver = false;

    // ----- Pause Event Listener -----

    @Override
    protected void handleOnPause() {
        super.handleOnPause();
        hasPausedEver = true;
        sendPauseEventListenerData();
    }

    private void sendPauseEventListenerData() {
        JSObject data = new JSObject();
        data.put("pause", true);
        notifyListeners("pause", data);
    }

    // ----- Resume Event Listener -----

    @Override
    protected void handleOnResume() {
        super.handleOnResume();
        if (hasPausedEver) {
            sendRestoreEventListenerData();
        }
    }

    private void sendRestoreEventListenerData() {
        JSObject data = new JSObject();
        data.put("restored", true);
        notifyListeners("resume", data);
    }

}

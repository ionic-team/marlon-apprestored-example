import type { PluginListenerHandle } from "@capacitor/core";

export interface MarlonAppRestorePlugin {
  addListener(
    eventName: 'resume',
    listenerFunc: (data: {[key: string]: boolean}) => void,
  ): Promise<PluginListenerHandle>;

  addListener(
    eventName: 'pause',
    listenerFunc: (data: {[key: string]: boolean}) => void,
  ): Promise<PluginListenerHandle>;
}

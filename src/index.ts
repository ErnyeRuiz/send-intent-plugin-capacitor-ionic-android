import { registerPlugin } from '@capacitor/core';

import type { IntentCommunicationPluginPlugin } from './definitions';

const IntentCommunicationPlugin = registerPlugin<IntentCommunicationPluginPlugin>('IntentCommunicationPlugin', {
  web: () => import('./web').then(m => new m.IntentCommunicationPluginWeb()),
});

export * from './definitions';
export { IntentCommunicationPlugin };

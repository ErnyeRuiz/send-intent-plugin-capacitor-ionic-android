import { WebPlugin } from '@capacitor/core';

import type { IntentCommunicationPluginPlugin } from './definitions';

export class IntentCommunicationPluginWeb extends WebPlugin implements IntentCommunicationPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

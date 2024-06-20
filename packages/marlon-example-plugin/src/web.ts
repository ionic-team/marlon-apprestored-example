import { WebPlugin } from '@capacitor/core';

import type { MarlonAppRestorePlugin } from './definitions';

export class MarlonAppRestoreWeb
  extends WebPlugin
  implements MarlonAppRestorePlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

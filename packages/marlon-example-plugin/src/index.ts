import { registerPlugin } from '@capacitor/core';

import type { MarlonAppRestorePlugin } from './definitions';

const MarlonAppRestore = registerPlugin<MarlonAppRestorePlugin>(
  'MarlonAppRestore',
  {
    web: () => import('./web').then(m => new m.MarlonAppRestoreWeb()),
  },
);

export * from './definitions';
export { MarlonAppRestore };

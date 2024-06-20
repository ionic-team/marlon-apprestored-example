export interface MarlonAppRestorePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}

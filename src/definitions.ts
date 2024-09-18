export interface IntentCommunicationPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}

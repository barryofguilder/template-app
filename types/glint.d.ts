import '@glint/environment-ember-loose';
import '@glint/environment-ember-template-imports';
import { HelperLike } from '@glint/template';

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry /* other addon registries */ {
    // local entries
    'page-title': HelperLike<{
      Args: { Positional: [title: string] };
      Return: void;
    }>;
  }
}

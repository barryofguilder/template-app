import Component from '@glimmer/component';
import { WithBoundArgs } from '@glint/template';
import ButtonComponent from './button';
import { hash } from '@ember/helper';

interface FormSignature {
  // The arguments accepted by the component
  Args: {};
  // Any blocks yielded by the component
  Blocks: {
    default: [
      {
        Submit: WithBoundArgs<typeof ButtonComponent, never>;
      }
    ];
  };
  // The element to which `...attributes` is applied in the component template
  Element: HTMLFormElement;
}

export default class FormComponent extends Component<FormSignature> {
  <template>
    <form>
      <div>
        {{yield (hash Submit=ButtonComponent)}}
      </div>
    </form>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Form: typeof FormComponent;
  }
}

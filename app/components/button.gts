import Component from '@glimmer/component';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

interface ButtonSignature {
  // The arguments accepted by the component
  Args: {
    onClick?: () => void;
  };
  // Any blocks yielded by the component
  Blocks: {
    default: [];
  };
  // The element to which `...attributes` is applied in the component template
  Element: HTMLButtonElement;
}

export default class ButtonComponent extends Component<ButtonSignature> {
  @action
  handleClick() {
    this.args.onClick?.();
  }

  <template>
    <button type='button' {{on 'click' this.handleClick}}>
      {{yield}}
    </button>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Button: typeof ButtonComponent;
  }
}

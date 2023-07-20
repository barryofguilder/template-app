import { action } from '@ember/object';
import Component from '@glimmer/component';

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
}

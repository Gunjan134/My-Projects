interface IProps {
  customClass: string;
  title: string;
}
export const Button = ({ title, customClass }: IProps) => (
  <button type='button' className={`common-button ${customClass}}`}>
    {title}
  </button>
);

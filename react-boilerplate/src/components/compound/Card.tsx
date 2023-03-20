import { ReactNode } from 'react';

interface IProps {
  customClass: string;
  children: ReactNode;
}
export const Card = ({ customClass, children }: IProps) => (
  <div
    style={{
      backgroundColor: '#333',
      borderRadius: 4,
      color: '#eee',
      minHeight: 200,
      padding: 12,
      width: 300,
    }}
    className={`common-card ${customClass}}`}
  >
    {children}
  </div>
);

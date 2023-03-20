import useBreakpoint from '../../hooks/useBreakpoint';

import styles from './Dummy.module.scss';

export const Dummy = () => {
  const breakpoint = useBreakpoint();
  return (
    <div className={styles.Dummy}>
      <header className={styles.Dummy_header}>
        <div
          className={
            breakpoint === 'sm' || breakpoint === 'xs'
              ? styles.small
              : styles.medium
          }
        >
          The text will be red for small and yellow for greater than small
        </div>
        <h1 style={{ fontSize: '48px' }}>{breakpoint}</h1>
        <h2 style={{ color: 'gray' }}>
          Change your browser width to see the breakpoint ☝️
        </h2>
      </header>
    </div>
  );
};

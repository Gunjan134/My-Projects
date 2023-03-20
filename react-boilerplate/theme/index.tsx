import { createTheme } from '@mui/material';

const theme = createTheme({
  palette: {
    primary: {
      main: '#color1',
    },
    secondary: {
      main: '#color2',
    },
    info: {
      main: '#color3',
    },
    success: {
      main: '#0FAF1B',
      light: '#707070',
      dark: '#E1242A',
    },
    error: {
      main: '#E1242A',
    },
    text: {
      primary: '#4D4D4D',
      secondary: '7070709F',
      disabled: '#A4A5A5',
    },
  },
  typography: {
    fontFamily: '"Open Sans"'
  }
});

export default theme;

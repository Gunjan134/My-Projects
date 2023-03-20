import { Route, Routes } from 'react-router-dom';

import App from './App';
import { Dummy } from './components/Dummy/Dummy';

function AppRouter() {
  return (
    <Routes>
      <Route path='/' element={<App />} />
      <Route path='/test' element={<Dummy />} />
    </Routes>
  );
}

export default AppRouter;

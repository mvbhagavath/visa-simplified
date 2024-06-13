import { configureStore } from '@reduxjs/toolkit';

import userDetailsSlice from './features/userDetails/userDetailsSlice';
const store = configureStore({
  reducer: {
    userDetails: userDetailsSlice
  }
});

export type RootState = ReturnType<typeof store.getState>

export default store;
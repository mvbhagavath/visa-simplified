import { createSlice } from "@reduxjs/toolkit";

const userDetailsSlice = createSlice({
  name: "UserDetails",
  initialState: {
    userDetails: {}
  },
  reducers: {

    saveDetails: (state, action) => {
      state.userDetails = action.payload
    }
  }
})

export const { saveDetails } = userDetailsSlice.actions

export default userDetailsSlice.reducer;
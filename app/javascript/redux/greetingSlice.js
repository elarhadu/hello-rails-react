import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';

const FETCH_GREETING = 'greeting/fetchGreeting';
const url = 'http://[::1]:5000/api/v1/greetings/random';

export const fetchGreeting = createAsyncThunk(FETCH_GREETING, async () => {
  const response = await fetch(url);
  const data = await response.json();
  return data.greeting;
});

const greetingSlice = createSlice({
  name: 'greeting',
  initialState: {
    greeting: null,
  },
  reducers: {},
  extraReducers: (builder) => {
    builder.addCase(fetchGreeting.fulfilled, (state, action) => {
      state.greeting = action.payload;
    });
  },
});

export default greetingSlice.reducer;
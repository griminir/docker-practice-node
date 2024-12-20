import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: { // this needs to be added to the config to make it work with docker
    host: true,
    strictPort: true,
    port: 3000,
  }
})

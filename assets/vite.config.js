import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
    plugins: [vue()],
    build: {
        manifest: true,
        outDir: "../priv/static/assets",
        rollupOptions: {
            input: "js/app.js"
        }
    },
    server: {
        origin: "http://localhost:4000"
    }
})
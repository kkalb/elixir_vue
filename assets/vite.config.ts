import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';

export default defineConfig(({ command }: any) => {
    const isDev = command !== "build";
    if (isDev) {
        // Terminate the watcher when Phoenix quits
        process.stdin.on("close", () => {
            process.exit(0);
        });

        process.stdin.resume();
    }

    return {
        plugins: [vue()],
        build: {
            outDir: 'priv/static/assets',
            rollupOptions: {
                input: {
                    main: 'assets/js/app.js',
                },
            },
        },
        server: {
            watch: {
                usePolling: true,
            },
            hmr: {
                host: 'localhost',
            },
            port: 3000,
            proxy: {
                '/assets': 'http://localhost:4000',
            },
        },
    }
});
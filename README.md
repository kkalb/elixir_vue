# Elixir Vue Project

## Prerequisites

Make sure you have the following installed:

- [VSCode](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/) (for devcontainer setup)

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/kkalb/elixir_vue.git
   cd elixir_vue
   ```
2. Install Elixir dependencies:
   ```sh
   mix deps.get
   ```
3. Install Node.js dependencies:
   ```sh
   cd assets
   npm install
   cd ..
   ```

## Running the Application

To start the Phoenix server:
```sh
mix ps
```
Open [http://localhost:4000](http://localhost:4000) in your browser.

## Development

- Run the Elixir formatter:
  ```sh
  mix format
  ```
- Run tests:
  ```sh
  mix test
  ```
- Start frontend development server manually (`mix ps` runs this automatically for you):
  ```sh
  cd assets
  npm run dev
  ```

## ToDo's

- [x] Implement Vue.js v3 and Vite v5
- [ ] Make vite reuse port 3000 after stopping and starting the server instead of incrementing the port
- [ ] Hot code reloading for both Elixir and Vue
- [ ] Basic unit and intgration tests
- [ ] Proper folder structure for .vue files/components
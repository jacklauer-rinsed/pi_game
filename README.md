# Pi Memorization Game

A web application built with Ruby on Rails to help users practice and improve their ability to memorize digits of π (pi).

## Features

- Choose how many digits of pi to memorize (10, 25, 50, or 100)
- Interactive interface that shows digits until you start typing
- Timer tracks how long you spend memorizing
- Color-coded input shows correct (green) and incorrect (red) digits
- High score tracking for each difficulty level
- Performance stats showing speed (digits per minute)
- Responsive design that works on mobile and desktop

## Demo

You can try the live demo at: [Pi Memorization Game](https://pi-game.onrender.com)

## How to Play

1. Choose how many digits you want to memorize from the home page
2. Study the digits displayed on the screen
3. Start typing to begin the game - digits will automatically hide
4. Type the digits of pi (the 3. prefix is already provided)
5. See immediate feedback with color-coded digits as you type
6. Complete the challenge to see your time and speed

## Technology Stack

- Ruby on Rails 7
- Tailwind CSS for styling
- SQLite for database
- JavaScript for interactive features

## Local Development

### Prerequisites

- Ruby 3.1.4 or higher
- Node.js 20.x or higher
- Yarn package manager

### Installation Steps

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/pi_game.git
   cd pi_game
   ```

2. Install dependencies:
   ```
   bundle install
   yarn install
   ```

3. Set up the database:
   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Start the development server:
   ```
   bin/dev
   ```

5. Open your browser and navigate to `http://localhost:3000`

## Deployment

This application is ready to deploy to free hosting services like Render.com:

1. Fork this repository or push to your own GitHub repo
2. Connect your Render.com account to your GitHub account
3. Create a new Web Service in Render, selecting your pi_game repository
4. Select "Ruby" as the environment
5. Use the following build command:
   ```
   bundle install && bundle exec rake assets:precompile
   ```
6. Use the following start command:
   ```
   bundle exec puma -C config/puma.rb
   ```
7. Add the environment variable:
   - `RAILS_ENV=production`
   - `RAILS_MASTER_KEY` (from config/master.key)

Alternatively, you can use the provided `render.yaml` file for a one-click deployment via Render's Blueprint feature.

## License

MIT

## Author

This Pi Memorization Game was created for pi day 2025.

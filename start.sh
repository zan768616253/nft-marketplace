#!/bin/sh

# Start the blockchain node in the background
npm run node &

# Wait for the blockchain node to be ready on port 8545
until nc -z localhost 8545; do
  echo "Waiting for blockchain node to start..."
  sleep 1
done

# Run the setup commands
echo "Running setup..."
npm run setup

echo "Starting service"
npm run dev
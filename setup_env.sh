#!/bin/bash

# Loop through modules 1 to 4
for i in {1..4}; do
    # Copy the example .env file to .env for each module
    cp module-$i/studio/.env.example module-$i/studio/.env
    
    # Write the OPENAI_API_KEY to the .env file
    echo "OPENAI_API_KEY=\"$OPENAI_API_KEY\"" > module-$i/studio/.env
done

# Append the TAVILY_API_KEY specifically to module 4's .env file
echo "TAVILY_API_KEY=\"$TAVILY_API_KEY\"" >> module-4/studio/.env


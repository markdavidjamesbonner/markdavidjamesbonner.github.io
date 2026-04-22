#!/bin/bash

# Update repository descriptions

# Repository descriptions
repositories=(
    "bash-github|bash/zsh utilities and helpers — shell scripting for practical productivity and learning."
    "compute_loop|TypeScript function resolution practice exercises for learning and skill building."
    "cv|Private version-controlled resume archive."
    "dvd_screensaver|Nostalgic CSS/HTML recreation of the classic DVD screensaver logo bounce effect."
    "ecobee_entry_greeter|Voice-interactive home entry greeting system that detects occupancy, asks 'Who's there?', verifies against family list, and responds with personalized greetings. Built with Node.js + WebSocket + HomeKit automation."
    "family-race-game|Top-down arcade truck racer on a figure-eight track with three AI opponents. Built with Vite, TypeScript, and Canvas 2D — compete for nitro, money pickups, and best lap times."
    "flight-sim|Browser-based 3D endless flight game built with Three.js and TypeScript. Dodge obstacles, shoot enemies, and chase high scores — all procedurally generated, no assets required."
    "flow_state|Mobile-first action sports judging app for skateboard, BMX, and scooter contests. Built with Vue 3 + Quasar + Supabase — handles trick scoring, heats, jam format, and real-time results."
    "grocery-list-mongo|Simple grocery tracker where you add items with amounts and notes, then check them off. Built with Vue + Quasar frontend and Node.js backend with MongoDB persistence."
    "gym_tan_learning|Train your brain with evidence-based exercises designed to strengthen cognitive pathways through targeted neuroplasticity training. Built with Vue."
    "hoedownatthehoof.ca|Single-page event landing site for The Annual Hoedown at The Hoof (June 20, 2026). Built with Vue 3 + Quasar — features auto-rotating image slideshow and event details."
    "markdavidjamesbonner.github.io|Personal portfolio and sandbox experiments site showcasing various projects and learning explorations."
    "paper-io-clone|Browser game inspired by Paper.io — claim territory by enclosing areas with your trail, avoid getting your trail cut by others, and compete against AI bots. Built with TypeScript — single-player / local only, no server or multiplayer."
    "recipe-shopper|Meal planner with auto-grouped shopping lists. One of those small tinkering projects from the junior-dev days. Built with Vue. 🚧 in progress"
    "robot-prompt-vault|AI prompt library organized and searchable. Built with Next.js, React, TypeScript, and Tailwind."
    "switchboard|Cofounder workspace for Switchboard — SMB AI infrastructure (audit → agents → monitoring), not a model play. Contains thesis, business canvas, market research, technical architecture, and pitch materials."
    "wetsandwich_2026|Bitbucket snapshot clone from January 2026. Built with Vue."
)

for repo in "${repositories[@]}"; do
    IFS='|' read -r name description <<< "$repo"
    gh repo edit "$name" --description "$description"
    echo "Updated $name description."
done

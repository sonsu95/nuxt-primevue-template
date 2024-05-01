# Nuxt 3 Template

## Nuxt Upgrade
```bash
npx nuxi upgrade
```

## default
1. use 3000 port default
2. this template is using pnpm
3. use lara presets on primevue. you can change presets on ./presets/lara
4. use prefix 'S' for components. you can change prefix on nuxt.config.ts

## How to use
- modify container_name in docker-compose.yml if you want

```bash
pnpm install # node_modules is different on container and host, need pnpm lock file

# Requires docker-desktop
docker-compose up --build -d # Run the container after building the image
docker-compose down # Terminating a Container
```

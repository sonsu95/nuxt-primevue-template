# Nuxt 3 Template

## Nuxt Upgrade
```bash
bunx nuxi upgrade
```

## default
1. use 3000 port default
2. use lara presets on primevue. you can change presets on ./presets/lara
3. this template is using pnpm

## How to use
- modify container_name in docker-compose.yml if you want

```bash
pnpm install # node_modules is different on container and host, need pnpm lock file

# Requires docker-desktop
docker-compose up --build -d # Run the container after building the image
docker-compose down # Terminating a Container
```

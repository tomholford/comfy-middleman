# Comfy Middleman Template

An opinionated Middleman starter repo to hit the ground running with your new static site.

## Features

- webpack / typescript
- bootstrap 5
- middleman blog plugin
- optimized production builds
  - minified js / css, hashed assets, optimized images, gzip
- auto-meta tags
- convenience bin scripts
- analytics placeholder
- `external_link_to` helper method to 

## Setup

Requires `bundler` and `npm`

### Get the template

Click [Use This Template](https://github.com/tomholford/comfy-middleman/generate) above to quickly get started. 

### Install deps

```sh
bin/setup
```

### Customize

- `site.yml`
  - details on your site used by the meta tag generator
- `config.rb`
  - update your timezone (default: `America/Los_Angeles`)
  - update the `host` for production build
- fallback image for opengraph (logo-lg.png)

### Workflow

Dev server:

```sh
bin/start
```

Build for production:

```sh
bin/build
```

Serve built site to proof before deployment:

```sh
bin/serve-prod
```

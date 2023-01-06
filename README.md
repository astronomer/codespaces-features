# Dev Container Features

This repository contains a _collection_ of Features related to Astronomer and Airflow. Each sub-section below shows a sample `devcontainer.json` alongside example usage of the Feature.

## Usage

### `astro-cli`

Running `astro [command]` inside the built container will execute the respective command for the Astro CLI.

```jsonc
{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "features": {
      "ghcr.io/astronomer/codespaces-features/astro-cli:1": {}
  },
  "postCreateCommand": "bash -i -c 'astro dev start -n --wait 2m'" # Optional
}
```

```bash
$ astro dev start
```



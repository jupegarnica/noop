# Noop

Do nothing image.

It is used to disable services overriding a docker compose file.

Publish to docker hub: [jupegarnica/noop](https://hub.docker.com/r/jupegarnica/noop)

Based on [busybox](https://hub.docker.com/_/busybox/)

## Usage

```yml
# compose.yml
services:
  web:
    image: node
    # ...
```

```yml
# compose.prod.yml
services:
  web:
    image: jupegarnica/noop
```

```bash
docker-compose -f compose.yml -f compose.prod.yml up
```


# Features

- Exit with code 0
- Do not log
- Light image: 760.86 KB
- If LOG environment it will log it to stdout
- If EXIT_CODE environment it will exit with it.
# Noop

Do nothing image.

It is used to disable services overriding a docker compose file.

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
- Light image: 2.68MB
- If LOG environment it will log it to stdout
- If EXIT_CODE environment it will exit with it.
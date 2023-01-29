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

- exit with code 0
- do not log
- if LOG enviroment it will log it to stdout
- if EXIT_CODE enviroment will exit with it.
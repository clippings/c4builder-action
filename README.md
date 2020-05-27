# C4builder GitHub Action

Runs C4Builder in GitHub Actions to generate a documentation website.

## Usage

Put the following step in your workflow:

```yml
      - name: C4Builder
        uses: clippings/c4builder-action@master
```

Example:

```yml
name: Build

on:
  pull_request:
    types: [open, synchronize]
  push: ~

jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1

      - name: C4Builder
        uses: clippings/c4builder-action@v1
```

## Configuration

The only available configuration is the path where the `.c4builder` file is located. Defaults to the root of your repoository.

You can change it like that:

```yml
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1

      - name: C4Builder
        uses: clippings/c4builder-action@v1
        with:
          path: 'doc/architecture'
```

All the remaining configuration like

## License

Licensed under the MIT license. See [LICENSE](LICENSE).

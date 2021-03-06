<h1 align="center">
    <img width="30%"  alt="Search Repository Action" src="./readme/icon-repo-searchaction.svg" />
</h1>

## ๐ป Project summary

GitHub Action that searches the repository information informed through an `input`, returning only the repository description.

## ๐ง Parameters

| Input        | Info                                                                                    |
| ------------ | --------------------------------------------------------------------------------------- |
| `repository` | Enter the name of the repository you want to search. ("jhonywalkeer/jhonywalkeer" is set by default) |

## ๐งช Example of use

```yaml
on: [push]

jobs:
  repository:
    runs-on: ubuntu-latest
    name: Get info repository
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Get info repository
        id: repository
        uses: ./
        with:
          repository: "octokit/octokit.rb"
      - name: Get the output time
        run: echo "info ${{ steps.repository.outputs.response }}"
```

## ๐ License

This project is under license from MIT. See the [LICENSE](LICENSE.md) file for more details.

# Anonymous Access in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **anonymous access types**:
`access` / `access constant` parameters and access discriminants.
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Access parameter | `Set` / `Get` |
| Access discriminant | `Window (Title : access constant String)` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 6).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).

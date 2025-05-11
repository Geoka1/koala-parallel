# GNU Parallel Characterization

This repository evaluates [GNU parallel](https://www.gnu.org/software/parallel/) using the [Koala](https://github.com/binpash/benchmarks) benchmarks for the shell. 
Each benchmark has been transformed to use GNU parallel where applicable. All transformations (and their size in loc) are outlined as follows:

| Benchmark      | LoC  | Notes                                                                  |
|----------------|------|------------------------------------------------------------------------|
| `aurpkg`       | 1    | run loop that fetches pkgs in parallel                                 |
| `bio`          | 5    | wrap outer loop                                                        |
| `covid-mts`    | 24   | identify parallelizable parts, use temp file                           |
| `file-enc`     | 8    | convert loop to `find`, export to function, apply parallel             |
| `log-analysis` | 17   | wrap calls with `parallel`, use temp files                             |
| `makeself`     |  0   |                                                                        |
| `max-temp`     | 6    | identify region, wrap calls, run in parallel                           |
| `media-conv`   | 4    | par/ize loop                                                           |
| `nlp`          | 3/script | loops only (~60 loc total)                                         |
| `oneliners`    | 3/script | break input into chunks                                            |
| `riker`        | 36   | identify independent compilations, wrap calls                          |
| `sklearn`      | 10   | same                                                                   |
| `unix50`       | 36   | break input per script                                                 |
| `vps-audit`    | 80   | wrap and export functions                                              |
| `web-index`    | 3    | rewrite parallelism using parallel                                     |


## Instructions

The top-level `main.sh` script is a quick script for downloading dependencies and inputs, running, profiling, and verifying a _single benchmark_.

```bash
./main.sh <BENCHMARK_NAME> [OPTIONS] [<args passed to execute.sh>]
```

For more information and context on the benchmarks used, please visit the [Koala](https://github.com/binpash/benchmarks) repository.

# License

The Koala Benchmarks are licensed under the MIT License. See the LICENSE file for more information.

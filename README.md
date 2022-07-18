# PNPM with docker

## development environment

1. use `pnpm` & `workspace`
2. use `--filter` options
3. Run command in top-level directory in docker

### Command

`docker build .`

### error message

```bash
 => ERROR [4/5] RUN pnpm install                                                                        5.8s
------
 > [4/5] RUN pnpm install:
#8 0.636 Scope: all 3 workspace projects
#8 0.956 Progress: resolved 1, reused 0, downloaded 0, added 0
#8 1.958 Progress: resolved 4, reused 0, downloaded 3, added 0
#8 2.959 Progress: resolved 43, reused 0, downloaded 40, added 0
#8 3.962 Progress: resolved 85, reused 0, downloaded 68, added 0
#8 4.705 Packages: +76
#8 4.705 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#8 4.775 Packages are hard linked from the content-addressable store to the virtual store.
#8 4.775   Content-addressable store is at: /root/.local/share/pnpm/store/v3
#8 4.775   Virtual store is at:             node_modules/.pnpm
#8 4.962 Progress: resolved 101, reused 0, downloaded 76, added 76, done
#8 4.972 . postinstall$ pnpm onflow build
#8 5.328 . postinstall: > @ onflow /
#8 5.329 . postinstall: > pnpm --filter "onflow" "build"
#8 5.680 . postinstall:  ERROR  Expected pattern to be a non-empty string
#8 5.680 . postinstall: pnpm: Expected pattern to be a non-empty string
#8 5.680 . postinstall:     at picomatch (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:46782:15)
#8 5.680 . postinstall:     at Object.micromatch.isMatch (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:46963:54)
#8 5.681 . postinstall:     at /usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:51921:66
#8 5.681 . postinstall:     at Array.filter (<anonymous>)
#8 5.681 . postinstall:     at matchPackagesByGlob (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:51921:33)
#8 5.682 . postinstall:     at _filterGraph (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:51840:27)
#8 5.682 . postinstall:     at filterGraph (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:51814:29)
#8 5.682 . postinstall:     at async filterPkgsBySelectorObjects (/usr/local/lib/node_modules/pnpm/dist/pnpm.cjs:51777:27)
#8 5.690 . postinstall:  ELIFECYCLE  Command failed with exit code 1.
#8 5.698 . postinstall: Failed
#8 5.700  ELIFECYCLE  Command failed with exit code 1.
------
executor failed running [/bin/sh -c pnpm install]: exit code: 1
```

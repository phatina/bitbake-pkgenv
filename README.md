# pkgenv

This bitbake class enables developers to create an environment for
cross-compilation to which they were used to.

## How to use

1. Open a recipe for which this environment file shall be created
2. Extend `inherit` list by `pkgenv` in your recipe
3. `$ bitbake <recipe> -c populate_ide_support`
4. `$ source tmp/environment-setup-<multiarch target>-<recipe name>`
5. `$ ./configure $CONFIGURE_FLAGS` or `$ cmake . $CMAKE_FLAGS`
7. `$ make`

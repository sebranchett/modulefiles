# Make a module on DelftBlue

[This link was very helpful.](https://hpc.ncsu.edu/Documents/user_modules.php)

Also, take a look at existing modules, located here on DelftBlue:
```
/apps/generic/modulefiles
```

The `.lua` file contains the definition of the module, including where to find the application itself.

The `.version` file defines which version of the application should be used, if none is specified during `module load <application>`.

The bash script `alphafold_bash_script` is the application and must be renamed and relocated.

## Accessing a Module

To use a module, first add the following line to `~/.bashrc` or to the job submission file:
```
module use --append /path/to/this/modulefiles/directory
```
Then load the module as usual:
```
module load <application_name>
```


# Make a module on DelftBlue

[This link was very helpful.](https://hpc.ncsu.edu/Documents/user_modules.php)

Also, take a look at existing modules, located here on DelftBlue:
```
/apps/generic/modulefiles
```

## Files description

In the `apps` directory, there is a bash script that can be used to run the application.

The `.lua` file in the `modulefiles` directory contains the definition of the module, including where to find the application (in this case, the bash script).
To create a new version, add a new `.lua` file in the same directory.

The `.version` file in the `modulefiles` directory defines the default version of the application.

## Accessing a Module

To use a module, first add the following line to `~/.bashrc` or to the job submission file:
```
module use --append /path/to/this/modulefiles/directory
```
Then load the module as usual:
```
module load <application_name>
```


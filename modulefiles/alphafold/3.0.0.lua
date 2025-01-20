local moduleName = myModuleName()
local moduleVersion = myModuleVersion()

conflict(moduleName)
depends_on("2024r1")
depends_on("cuda/11.7")

whatis(moduleName .. moduleVersion)
whatis(moduleName .. "AlphaFold is an artificial intelligence program developed by DeepMind, a subsidiary of Alphabet, which performs predictions of protein structure.")

local prefix = pathJoin("/projects/alphafold/apps", moduleName, moduleVersion)

prepend_path("PATH", prefix)

setenv("ALPHAFOLD_ROOT", prefix)


# Autogenerated wrapper script for tree_sitter_json_jll for i686-w64-mingw32
export libtreesitter_json

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libtreesitter_json`
const libtreesitter_json_splitpath = ["bin", "libtreesitter_json.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_json_path = ""

# libtreesitter_json-specific global declaration
# This will be filled out by __init__()
libtreesitter_json_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_json = "libtreesitter_json.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_json")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_json_path = normpath(joinpath(artifact_dir, libtreesitter_json_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_json_handle = dlopen(libtreesitter_json_path)
    push!(LIBPATH_list, dirname(libtreesitter_json_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()


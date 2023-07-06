# - Find Tcmalloc
# Find the native Tcmalloc includes and library
#
#  Tcmalloc_INCLUDE_DIR - where to find Tcmalloc.h, etc.
#  Tcmalloc_LIBRARIES   - List of libraries when using Tcmalloc.
#  Tcmalloc_FOUND       - True if Tcmalloc found.

# find_path(Tcmalloc_INCLUDE_DIR gperftools/tcmalloc.h NO_DEFAULT_PATH PATHS
#   ${Tcmalloc_ROOT}/include
#   /usr/include
#   /opt/local/include
#   /usr/local/include
# )
set(Tcmalloc_INCLUDE_DIR /home/nathan/.spack/Spack/opt/spack/linux-pop22-skylake/gcc-11.3.0/gperftools-2.10-zkagfvz6koblofnd4ke54ilinrt5dfqk/include/)

if (USE_TCMALLOC)
  set(Tcmalloc_NAMES tcmalloc)
else ()
  set(Tcmalloc_NAMES tcmalloc_minimal tcmalloc)
endif ()

# find_library(Tcmalloc_LIBRARY NO_DEFAULT_PATH
#   NAMES ${Tcmalloc_NAMES}
#   PATHS   ${Tcmalloc_ROOT}/lib /lib /usr/lib /usr/local/lib /opt/local/lib
# )
set(Tcmalloc_LIBRARY /home/nathan/.spack/Spack/opt/spack/linux-pop22-skylake/gcc-11.3.0/gperftools-2.10-zkagfvz6koblofnd4ke54ilinrt5dfqk/lib/libtcmalloc.so)

if (Tcmalloc_INCLUDE_DIR AND Tcmalloc_LIBRARY)
  set(Tcmalloc_FOUND TRUE)
  set( Tcmalloc_LIBRARIES ${Tcmalloc_LIBRARY} )
else ()
  set(Tcmalloc_FOUND FALSE)
  set( Tcmalloc_LIBRARIES )
endif ()

if (Tcmalloc_FOUND)
  message(STATUS "Found Tcmalloc: ${Tcmalloc_LIBRARY}")
else ()
  message(STATUS "Not Found Tcmalloc: ${Tcmalloc_LIBRARY}")
  if (Tcmalloc_FIND_REQUIRED)
    message(STATUS "Looked for Tcmalloc libraries named ${Tcmalloc_NAMES}.")
    message(FATAL_ERROR "Could NOT find Tcmalloc library")
  endif ()
endif ()

mark_as_advanced(
  Tcmalloc_LIBRARY
  Tcmalloc_INCLUDE_DIR
  )


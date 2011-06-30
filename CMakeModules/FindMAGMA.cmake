# - Try to find libMAGMA
#
#  MAGMA_FOUND - system has libMAGMA
#  MAGMA_INCLUDE_DIR - the libMAGMA include directories
#  MAGMA_LIBRARY - link these to use libMAGMA

FIND_PATH(
  MAGMA_INCLUDE_DIR
  NAMES magma.h
  PATHS
    ${CMAKE_SOURCE_DIR}/../magma_1.0.0-rc5/include
    /usr/include
    /usr/local/include
)

FIND_LIBRARY(
  MAGMA_LIBRARY
  NAMES magma
  PATHS
    ${CMAKE_SOURCE_DIR}/../magma_1.0.0-rc5/lib
    /usr/lib
    /usr/local/lib
)

IF(MAGMA_INCLUDE_DIR AND MAGMA_LIBRARY)
  SET(MAGMA_FOUND TRUE)
ENDIF()


IF(MAGMA_FOUND)
   IF(NOT MAGMA_FIND_QUIETLY)
      MESSAGE(STATUS "Found magma: ${MAGMA_LIBRARY}")
   ENDIF()
ELSE()
   IF(MAGMA_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find MAGMA")
   ENDIF()
ENDIF()

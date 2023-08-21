#pragma once

#include <cstdlib>
#include <new>
#include <limits>
#include "./mallocator.hpp"

namespace alloc_test {

ALLOC_TEST_MALLOCATOR_DEFINITION

template<typename T>
using test_allocator = mallocator<T>;

inline constexpr const char* allocator_name = "tc_malloc";

} // namespace alloc_test

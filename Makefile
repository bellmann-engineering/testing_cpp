# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -I/usr/include -pthread
LDFLAGS = -lgtest -lgtest_main -pthread

# Directories
SRC_DIR = src
TEST_DIR = test
BUILD_DIR = build

# Source files
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
TEST_FILES = $(wildcard $(TEST_DIR)/*.cpp)

# Output
TARGET = $(BUILD_DIR)/runTests

# Build rules
all: $(TARGET)

$(TARGET): $(SRC_FILES) $(TEST_FILES)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean

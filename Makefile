SRC_DIR := src
BUILD_DIR := build

KERNEL := $(BUILD_DIR)/kernel.asm

SOURCES := \
	$(SRC_DIR)/kernel.asm \
	$(SRC_DIR)/lib/print.asm

.PHONY: all clean

all: $(KERNEL)

$(KERNEL): $(SOURCES)
	@mkdir -p $(BUILD_DIR)
	@cat $(SOURCES) > $(KERNEL)
	@echo "[OK] Built $(KERNEL)"

clean:
	@rm -rf $(BUILD_DIR)
	@echo "[OK] Cleaned build directory"
BUILD_DIR := build
HEADERS := $(wildcard *.h)
SOURCES := $(wildcard *.c)
OBJECTS := $(addprefix $(BUILD_DIR)/, $(SOURCES:.c=.o))

$(BUILD_DIR)/bin: $(OBJECTS)
	@printf "%8s %-40s %s\n" $(CC) $@ "$(CFLAGS)"
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: %.c $(HEADERS)
	@printf "%8s %-40s %s\n" $(CC) $< "$(CFLAGS)"
	@mkdir -p $(BUILD_DIR)
	@$(CC) -c $(CFLAGS) -o $@ $<


clean:
	@rm -rf $(BUILD_DIR)

cc := gcc
cflags := -std=c99 -g -Wall
target := bin/athenavm

src := $(wildcard src/*.c)
obj := $(addprefix bin/,$(src:.c=.o))

$(target): $(obj)
	$(cc) $^ -o $@

bin/%.o: %.c
	mkdir -p $(@D)
	$(cc) $(cflags) -c $< -o $@

.PHONY: run, clean
run: $(target)
	$(target)

clean:
	rm -r bin/

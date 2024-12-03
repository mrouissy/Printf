NAME = libftprintf.a

C = cc

FLAG = -Wall -Wextra -Werror

RM = rm -f

SRC =	printf.c print_numbers.c print_string.c print_hexa.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME) : $(OBJ)
	@ar rsc $(NAME) $(OBJ)
	@echo "libftprintf ok"

%.o: %.c
	@$(C) $(FLAG) -c $< -o $@
#@echo ".o ok"

clean:
	@$(RM)  $(OBJ) $(OBONUS)
#@echo "clean ok"

fclean : clean
	@$(RM) $(NAME)
	@echo "fclean ok"

re : clean all

.PHONY: all, clean, fclean, re

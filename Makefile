##
## EPITECH PROJECT, 2020
## ASM
## File description:
## Makefile
##

SRC		=	strlen.s	\
			strchr.s	\
			memset.s	\
			memcpy.s	\
			strcmp.s	\
			strncmp.s

OBJ		=	$(SRC:.s=.o)

ASFLAGS	=	-felf64

AS		=	nasm

NAME	=	libasm.so

all:		$(NAME)

$(NAME): $(OBJ)
	gcc -shared -o $(NAME) $(OBJ) -fPIC

clean:
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
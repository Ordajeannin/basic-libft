# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajeannin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/15 16:27:15 by ajeannin          #+#    #+#              #
#    Updated: 2022/11/04 18:38:23 by ajeannin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# .PHONY: all fclean clean re #fonctionne systematiquement (... utilité?)

NAME =  libft.a 

CFLAGS = -Werror -Wextra -Wall

SRCS = ft_atoi.c	\
       ft_bzero.c	\
       ft_calloc.c	\
       ft_isalnum.c	\
       ft_isalpha.c	\
       ft_isascii.c	\
       ft_isdigit.c	\
       ft_isprint.c	\
       ft_itoa.c	\
       ft_memchr.c	\
       ft_memcmp.c	\
       ft_memcpy.c	\
       ft_memmove.c	\
       ft_memset.c	\
       ft_putchar_fd.c	\
       ft_putendl_fd.c	\
       ft_putnbr_fd.c	\
       ft_putstr_fd.c	\
       ft_split.c	\
       ft_strchr.c	\
       ft_strdup.c	\
       ft_striteri.c	\
       ft_strjoin.c	\
       ft_strlcat.c	\
       ft_strlcpy.c	\
       ft_strlen.c	\
       ft_strmapi.c	\
       ft_strncmp.c	\
       ft_strnstr.c	\
       ft_strrchr.c	\
       ft_strtrim.c	\
       ft_substr.c	\
       ft_tolower.c	\
       ft_toupper.c

SRCS_BONUS = ft_lstnew.c	\
	     ft_lstadd_front.c	\
	     ft_lstsize.c	\
	     ft_lstlast.c	\
	     ft_lstadd_back.c	\
	     ft_lstdelone.c	\
	     ft_lstclear.c	\
	     ft_lstiter.c	\
	     ft_lstmap.c


OBJ = $(SRCS:.c=.o) #litteralement "OBJ correspont à toutes les SRCS compilées, donc en .o"

OBJ_BONUS = $(SRCS_BONUS:.c=.o)

all : $(NAME)

clean : 
	rm -f $(OBJ) $(OBJ_BONUS)

fclean : clean
	rm -rf $(NAME)

re: fclean all

bonus: $(OBJ) $(OBJ_BONUS)
	ar -crs $(NAME) $(OBJ) $(OBJ_BONUS)

$(NAME) : $(OBJ)
	ar -crs $(NAME) $(OBJ)                        

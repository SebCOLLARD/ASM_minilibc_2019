/*
** EPITECH PROJECT, 2020
** x86_64_Assembly
** File description:
** main
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

// char *my_strchr(char *str, int b)
// {
//         for (int i = 0; str[i] != '\0'; i++) {
//             if (str[i] == b)
//                 return str + i;
//         }
//         return NULL;
// }

// void *my_memset(void *ptr, int c, size_t n)
// {
//     char *tmp = (char *)ptr;
//     for (size_t i = 0; i < n; i++)
//         tmp[i] = c;
//     return (void *)tmp;
// }

// void *my_memcpy(void *dest, const void *src, size_t n)
// {
//     char *tmp = (char *)dest;
//     char *tmp2 = (char *)src;
//     for (int i = 0; i < n; i++)
//         tmp[i] = tmp2[i];
//     return (void *)tmp;
// }

// int my_strcmp(char *s1, char *s2)
// {
//     for (int i = 0; s1[i] != '\0'; i++)
//         if (s1[i] != s2[i])
//             return s2[i] - s1[i];
//     return 0;
// }

int main(void)
{
    char *str = strdup("hey bro !");
    char *tmp = malloc(sizeof(char) * 4);

    // tmp = strchr(str, 'b');
    // if (strcmp(tmp, "bro !") == 0 && strcmp(str, "hey bro !") == 0) {
    //     printf("my_strchr passed\n");
    // } else {
    //     printf("my_strchr failed, res=[%s]\n", tmp);
    // }
    // memset(str, '+', 3);
    // if (strcmp(str, "+++ bro !") == 0) {
    //     printf("my_memset passed\n");
    // } else {
    //     printf("my_memset failed, str=[%s]\n", str);
    // }
    // memcpy(tmp, str, 3);
    // printf("%d   ", my_strcmp(tmp, "hey"));
    // if (my_strcmp(tmp, "hey") == 0) {
    //     printf("memcpy passed\n");
    // } else {
    //     printf(tmp);
    //     printf("memcpy failed\n");
    // }
    printf("%d\n", strncmp(str, "lo", 3));
    free(str);
    return (0);
}
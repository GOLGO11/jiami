# include <stdio.h>

# define NAME_LEN 10

struct part {
	int number;
	char name[NAME_LEN+1];
	int on_hand;
} part1 = {528, "Disk drive", 10},
  part2 = {914, "Printer cable", 5};

void main()
{
	printf("Part number: %d\n", part2.number);
	printf("Part name: %s\n", part2.name);
	printf("Quantity on hand: %d\n", part2.on_hand);
}


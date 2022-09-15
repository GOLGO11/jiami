/* 编写C语言版的加密程序 */

#include <stdio.h>
#include <string.h>

/* 函数声明 */

string undertale(block[]);
string swap(block[]);
string encrypt_1(plaintext[]);
string encrypt_2(cyphertext_1[]);

void main()
{
	char cyphertext_1, cyphertext_2, plaintext;

	scanf("请输入待加密的明文：\n");
	cyphertext_1 = encrypt_1(plaintext);
	cyphertext_2 = encrypt_2(cyphertext_1);
	printf("\n生成的密文如下: ");
	printf("%s", cyphertext_2);	
}

string undertale(block[])
{
	if strlen(block) == 6
	{
		temp = ['', '', '', '', '', ''];
		temp[0] = block[2];	
		temp[1] = block[4];
		temp[2] = block[1];
		temp[3] = block[5];
		temp[4] = block[3];
		temp[5] = block[0];
		block = temp;
		return block;
	}

	if strlen(block) == 5
	{
		temp = ['', '', '', '', ''];
		temp[0] = block[2];
		temp[1] = block[4];
		temp[2] = block[1];
		temp[3] = block[3];
		temp[4] = block[0];
		block = temp; 
		return block;
	}

	if strlen(block) == 4
	{
		temp = ['', '', '', ''];	
		temp[0] = block[2];
		temp[1] = block[1];
		temp[2] = block[3];
		temp[3] = block[0];
		block = temp;
		return block;
	}

	if strlen(block) == 3
	{
		temp = ['', '', '', ''];
		temp[0] = block[2];
		temp[1] = block[1];
		temp[2] = block[0];
		block = temp;
		return block;
	}

	if strlen(block) == 2
	{
		temp = ['', ''];
		temp[0] = block[1];
		temp[1] = block[0];
		block = temp;
		return block;
	}

	if strlen(block) == 1
	{
		return block;
	}
}

string swap(block[])
{
	temp = ['', ''];
	temp[0] = block[1];
	temp[1] = block[0];
	block = temp;
	return block;
}

string encrypt_1(plaintext[])
{
	char cyphertext = '';
	int remain, num, i;

	remain = (strlen(plaintext)) % 6;
	if remain == 0
	{
		num = (strlen(plaintext)) / 6;
	}
	if remain != 0
	{
		num = (strlen(plaintext)) / 6 + 1;
	}
	
	if remain == 0
	{
		for(i = 1; i <= num; i++)
		{
			block = plaintext[6*i:6*(i+1)];
			cyphertext_1 = cyphertext_1 + undertale(block);
			return cyphertext_1;
		}
	}
	if remain != 0
	{
		for(i = 1; i <= (num-1); i++)
		{
			block = plaintext[6*i:6*(i+1)];
			cyphertext_1 = cyphertext_1 + undertale(block);
		}
		block = plaintext[strlen(plaintext)-remain:];
		cyphertext_1 = cyphertext_1 + undertale(block);
	return cyphertext_1;	
}

string encrypt_2(cyphertext_1[])
{
	char cyphertext_2 = '';
	int remain, num, i;
	
	remain = (strlen(cyohertext_1)) % 2;

	if remain == 0
	{
		num = (strlen(cyphertext_1)) / 2;
	}
	if remain != 0
	{
		num = (strlen(cyphertext_1)) / 2 + 1;
	}

	if remain == 0
	{
		for(i=1; i<=num; i++)
		{
			block = cyphertext_1[2*i:2*(i+1)];
			cyphertext_2 = cyphertext_2 + swap(block);
		}
		return cyphertext_2;
	}
	if remain != 0
	{
		for(i=1;i<=(num-1);i++)
		{
			block = cyphertext_1[2*i:2*(i+1)];
			cyphertext_2 = cyphertext_2 + swap(block);
		}
		cyphertext_2 = cyphertext_2 + cyphertext_1[-1];
		return cyphertext_2;
	}
}


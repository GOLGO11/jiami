# -*- coding:utf-8 -*-
# 加密

def undertale(block):
    # 将undertale怪物王国的标志抽象成包含6个格子的倒三角，第一排三个格子，第二
    # 排两个格子，第三排一个格子，从左边开始，一排一排的填入字符。
    # 从右边开始一列一列的输出字符，即第一层加密。

    # 6个字符的情况
    if len(block) == 6:
        # 123456 --> 352641
        temp = ['','','','','','']
        temp[0] = block[2]
        temp[1] = block[4]
        temp[2] = block[1]
        temp[3] = block[5]
        temp[4] = block[3]
        temp[5] = block[0]
        block = ''.join(temp)
        return block

    # 5个字符的情况
    if len(block) == 5:
        # 12345 --> 35241
        temp = ['','','','','']
        temp[0] = block[2]
        temp[1] = block[4]
        temp[2] = block[1]
        temp[3] = block[3]
        temp[4] = block[0]
        block = ''.join(temp)
        return block

    # 4个字符的情况
    if len(block) == 4:
        # 1234 --> 3241
        temp = ['','','','']
        temp[0] = block[2]
        temp[1] = block[1]
        temp[2] = block[3]
        temp[3] = block[0]
        block = ''.join(temp)
        return block
    
    # 3个字符的情况 
    if len(block) == 3:
        # 123 --> 321
        temp = ['', '', '']
        temp[0] = block[2]
        temp[1] = block[1]
        temp[2] = block[0]
        block = ''.join(temp)
        return block

    # 2个字符的情况
    if len(block) == 2:
        # 12 --> 21
        temp = ['','']
        temp[0] = block[1]
        temp[1] = block[0]
        block = ''.join(temp)
        return block
    
    # 1个字符的情况
    if len(block) == 1:
        # 1 --> 1   
        return block

def swap(block):
    # 一排字符，从左边开始，每两个字符一组，字符之间交换位置，即第二层加密
    temp = ['','']
    temp[0] = block[1]
    temp[1] = block[0]
    block = ''.join(temp)
    return block

def encrypt_1(plaintext):
    # 第一层加密

    # 字符串分组，6个字符一组，不足6个字符单独再分一组
    cyphertext_1 = ''
    remain = int(len(plaintext) % 6)
    if remain == 0:
        num = int(len(plaintext) / 6)
    if remain != 0:
        num = int(len(plaintext) / 6 + 1)

    # 对每一组字符串进行加密，并拼接到新的字符串，输出拼接后的结果
    # 字符串长度能被6整除的情况
    if remain == 0:
        for i in range(num):
            block = plaintext[6*i:6*(i+1)]
            cyphertext_1 = cyphertext_1 + undertale(block)
        return cyphertext_1

    # 字符串长度不能被6整除的情况
    if remain != 0: 
        for i in range(num-1):
            block = plaintext[6*i:6*(i+1)]
            cyphertext_1 = cyphertext_1 + undertale(block)
        block = plaintext[len(plaintext)-remain:]
        cyphertext_1 = cyphertext_1 + undertale(block)
        return cyphertext_1

def encrypt_2(cyphertext_1):
    # 第二层加密

    # 如果是偶数个字符，每两个字符一组，组内字符互换位置
    # 如果是奇数个字符，前n-1个字符按照偶数个字符的规则加密，然后拼接第n个字符

    cyphertext_2 = ''
    remain = int(len(cyphertext_1) % 2)
    if remain == 0:
        num = int(len(cyphertext_1) / 2)
    if remain != 0:
        num = int(len(cyphertext_1) / 2 + 1)

    # 字符串长度能被2整除的情况
    if remain == 0:
        for i in range(num):
            block = cyphertext_1[2*i:2*(i+1)]
            cyphertext_2 = cyphertext_2 + swap(block)
        return cyphertext_2

    # 字符串长度不能被2整除的情况
    if remain != 0:
        for i in range(num-1):
            block = cyphertext_1[2*i:2*(i+1)]
            cyphertext_2 = cyphertext_2 +swap(block)
        cyphertext_2 = cyphertext_2 + cyphertext_1[-1] 
        return cyphertext_2    


if __name__ == "__main__":

    # 接受一个待编码的字符串
    plaintext = input("请输入待加密的明文：\n")

    # 第一层加密
    cyphertext_1 = encrypt_1(plaintext)

    # 第二层加密
    cyphertext_2 = encrypt_2(cyphertext_1)

    # 输出
    print("\n")
    print("生成的密文如下：")
    print(cyphertext_2)
    

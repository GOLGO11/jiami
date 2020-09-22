# -*- coding:utf-8 -*-
# 解密

def undertale(block):

    # 6个字符的情况
    if len(block) == 6:
        # 352641 --> 123456
        temp = ['','','','','','']
        temp[2] = block[0]
        temp[4] = block[1]
        temp[1] = block[2]
        temp[5] = block[3]
        temp[3] = block[4]
        temp[0] = block[5]
        block = ''.join(temp)
        return block

    # 5个字符的情况
    if len(block) == 5:
        # 35241 --> 12345
        temp = ['','','','','']
        temp[2] = block[0]
        temp[4] = block[1]
        temp[1] = block[2]
        temp[3] = block[3]
        temp[0] = block[4]
        block = ''.join(temp)
        return block

    # 4个字符的情况
    if len(block) == 4:
        # 3241 --> 1234
        temp = ['','','','']
        temp[2] = block[0]
        temp[1] = block[1]
        temp[3] = block[2]
        temp[0] = block[3]
        block = ''.join(temp)
        return block

    # 3个字符的情况
    if len(block) == 3:
        # 321 --> 123
        temp = ['','','']
        temp[2] = block[0]
        temp[1] = block[1]
        temp[0] = block[2]
        block = ''.join(temp)
        return block

    # 2个字符的情况
    if len(block) == 2:
        # 21 --> 12
        temp = ['','']
        temp[1] = block[0]
        temp[0] = block[1]
        block = ''.join(temp)
        return block

    # 1个字符的情况
    if len(block) == 1:
        # 1 --> 1
        return block

def swap(block):

    # 两个字符之间交换位置
    temp = ['','']
    temp[1] = block[0]
    temp[0] = block[1]
    block = ''.join(temp)
    return block

def decrypt_1(ciphertext):
    # 第一层解密

    # 如果是偶数个字符，每两个字符一组，组内字符互换位置；
    # 如果是奇数个字符，前n-1个字符按照偶数个字符的规则解密，然后拼接第n个字符

    ciphertext_1 = ''
    remain = int(len(ciphertext) % 2)
    if remain == 0:
        num = int(len(ciphertext) / 2)
    if remain != 0:
        num = int(len(ciphertext) / 2 + 1)

    # 字符串长度能被2整除的情况
    if remain == 0:
        for i in range(num):
            block = ciphertext[2*i:2*(i+1)]
            ciphertext_1 = ciphertext_1 + swap(block)
        return ciphertext_1

    # 字符串长度不能被2整除的情况
    if remain != 0:
        for i in range(num-1):
            block = ciphertext[2*i:2*(i+1)]
            ciphertext_1 = ciphertext_1 + swap(block)
        ciphertext_1 = ciphertext_1 + ciphertext[-1]
        return ciphertext_1

def decrypt_2(ciphertext_1):
    # 第二层解密

    # 字符串分组，6个字符一组，不足6个字符单独再分一组
    plaintext = ''
    remain = int(len(ciphertext_1) % 6)
    if remain == 0:
        num = int(len(ciphertext_1) / 6)
    if remain != 0:
        num = int(len(ciphertext_1) / 6 + 1)

    # 对每一组字符串进行加密，并拼接到新的字符串，输出拼接后的结果
    # 字符串长度能被6整除的情况
    if remain == 0:
        for i in range(num):
            block = ciphertext_1[6*i:6*(i+1)]
            plaintext = plaintext + undertale(block)
        return plaintext

    # 字符串长度不能被6整除的情况
    if remain != 0:
        for i in range(num-1):
            block = ciphertext_1[6*i:6*(i+1)]
            plaintext = plaintext + undertale(block)
        block = ciphertext_1[len(ciphertext_1)-remain:]
        plaintext = plaintext + undertale(block)
        return plaintext

if __name__ == "__main__":

    # 接受一个待解密的密文
    ciphertext = input("请输入待解密的密文：\n")

    # 第一层解密
    ciphertext_1 = decrypt_1(ciphertext)

    # 第二层解密
    plaintext = decrypt_2(ciphertext_1)

    # 输出
    print("\n")
    print("生成的明文如下：")
    print(plaintext)


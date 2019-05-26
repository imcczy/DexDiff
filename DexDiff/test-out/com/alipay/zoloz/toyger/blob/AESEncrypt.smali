.class public Lcom/alipay/zoloz/toyger/blob/AESEncrypt;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static VIPARA:Ljava/lang/String; = "4306020520119888"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static encrypt([B[B)[B
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L9
  .catch Ljavax/crypto/NoSuchPaddingException; { :L0 .. :L1 } :L8
  .catch Ljava/security/InvalidKeyException; { :L0 .. :L1 } :L7
  .catch Ljavax/crypto/IllegalBlockSizeException; { :L0 .. :L1 } :L6
  .catch Ljavax/crypto/BadPaddingException; { :L0 .. :L1 } :L5
  .catch Ljava/security/InvalidAlgorithmParameterException; { :L0 .. :L1 } :L3
  .registers 6
  :L0
  .prologue
  .line 19
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;
    const-string v1, "4306020520119888"
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    invoke-direct { v0, v1 }, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
  .line 20
    const-string v1, "AES/CBC/PKCS5Padding"
    invoke-static { v1 }, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    move-result-object v1
  .line 21
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"
    invoke-direct { v2, p1, v3 }, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
  .line 22
    const/4 v3, 1
    invoke-virtual { v1, v3, v2, v0 }, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
  .line 23
    invoke-virtual { v1, p0 }, Ljavax/crypto/Cipher;->doFinal([B)[B
  :L1
    move-result-object v0
  :L2
  .line 32
    return-object v0
  :L3
  .line 30
    move-exception v0
  :L4
  .line 32
    const/4 v0, 0
    goto :L2
  :L5
  .line 29
    move-exception v0
    goto :L4
  :L6
  .line 28
    move-exception v0
    goto :L4
  :L7
  .line 27
    move-exception v0
    goto :L4
  :L8
  .line 26
    move-exception v0
    goto :L4
  :L9
  .line 25
    move-exception v0
    goto :L4
.end method

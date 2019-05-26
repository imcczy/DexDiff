.class public Lcom/alipay/zoloz/toyger/blob/CryptoManager;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static AES_LENGTH:I = 16

.field private final static TAG:Ljava/lang/String; = "CryptoManager"

.field private aesCypher:[B

.field private aesKey:[B

.field private publicKey:Ljava/security/interfaces/RSAPublicKey;

.method public constructor <init>(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  :L0
    invoke-static { p1 }, Lcom/alipay/zoloz/toyger/blob/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->publicKey:Ljava/security/interfaces/RSAPublicKey;
    const/16 v0, 16
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->randomBytes(I)[B
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->aesKey:[B
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->publicKey:Ljava/security/interfaces/RSAPublicKey;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->aesKey:[B
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/blob/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->aesCypher:[B
  :L1
    return-void
  :L2
    move-exception v0
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "fail to init crypto manager"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method private randomBytes(I)[B
  .registers 4
  .prologue
  .line 36
    new-instance v0, Ljava/security/SecureRandom;
    invoke-direct { v0 }, Ljava/security/SecureRandom;-><init>()V
  .line 37
    new-array v1, p1, [B
  .line 38
    invoke-virtual { v0, v1 }, Ljava/security/SecureRandom;->nextBytes([B)V
  .line 39
    return-object v1
.end method

.method public encrypt([B)[B
  .registers 2
    return-object p1
.end method

.method public getAESCypher()[B
  .registers 2
  .prologue
  .line 32
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->aesCypher:[B
    return-object v0
.end method

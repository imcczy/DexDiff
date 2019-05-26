.class public Lcom/alipay/zoloz/toyger/blob/RSAEncrypt;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static HEX_CHAR:[C

.field public final static privateKeyName:Ljava/lang/String; = "privateKey.keystore"

.field public final static publickKeyName:Ljava/lang/String; = "publicKey.keystore"

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 21
    const/16 v0, 16
    new-array v0, v0, [C
    fill-array-data v0, :L0
    sput-object v0, Lcom/alipay/zoloz/toyger/blob/RSAEncrypt;->HEX_CHAR:[C
    return-void
  :L0
  .array-data 2
    48t 0t
    49t 0t
    50t 0t
    51t 0t
    52t 0t
    53t 0t
    54t 0t
    55t 0t
    56t 0t
    57t 0t
    97t 0t
    98t 0t
    99t 0t
    100t 0t
    101t 0t
    102t 0t
  .end array-data
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
  .catch Ljava/security/NoSuchAlgorithmException; { :L0 .. :L1 } :L3
  .catch Ljavax/crypto/NoSuchPaddingException; { :L0 .. :L1 } :L4
  .catch Ljava/security/InvalidKeyException; { :L0 .. :L1 } :L5
  .catch Ljavax/crypto/IllegalBlockSizeException; { :L0 .. :L1 } :L6
  .catch Ljavax/crypto/BadPaddingException; { :L0 .. :L1 } :L7
  .registers 4
  .prologue
  .line 81
    if-nez p0, :L0
  .line 82
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u52a0\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 87
    const-string v0, "RSA/ECB/PKCS1Padding"
    invoke-static { v0 }, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    move-result-object v0
  .line 88
    const/4 v1, 1
    invoke-virtual { v0, v1, p0 }, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
  .line 89
    invoke-virtual { v0, p1 }, Ljavax/crypto/Cipher;->doFinal([B)[B
  :L1
    move-result-object v0
  :L2
  .line 94
    return-object v0
  :L3
  .line 91
    move-exception v0
  .line 92
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
  .line 93
    move-exception v0
  .line 94
    const/4 v0, 0
    goto :L2
  :L5
  .line 95
    move-exception v0
  .line 96
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u52a0\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
  .line 97
    move-exception v0
  .line 98
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L7
  .line 99
    move-exception v0
  .line 100
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
  .catch Ljava/security/NoSuchAlgorithmException; { :L3 .. :L4 } :L5
  .catch Ljava/security/spec/InvalidKeySpecException; { :L3 .. :L4 } :L6
  .catch Ljava/lang/NullPointerException; { :L3 .. :L4 } :L7
  .registers 9
  .prologue
    const/4 v1, 0
  .line 43
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
  .line 45
    const-string v0, "\n"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v3
  .line 47
    array-length v4, v3
    move v0, v1
  :L0
    if-ge v0, v4, :L3
    aget-object v5, v3, v0
  .line 49
    invoke-virtual { v5, v1 }, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 45
    if-ne v6, v7, :L2
  :L1
  .line 47
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 52
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 53
    const/16 v5, 13
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L1
  :L3
  .line 58
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
    invoke-static { v0, v1 }, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    move-result-object v0
  .line 59
    const-string v1, "RSA"
    invoke-static { v1 }, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    move-result-object v1
  .line 60
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;
    invoke-direct { v2, v0 }, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
  .line 61
    invoke-virtual { v1, v2 }, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    move-result-object v0
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
  :L4
    return-object v0
  :L5
  .line 62
    move-exception v0
  .line 63
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u65e0\u6b64\u7b97\u6cd5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
  .line 64
    move-exception v0
  .line 65
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u516c\u94a5\u975e\u6cd5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
  :L7
  .line 66
    move-exception v0
  .line 67
    new-instance v0, Ljava/lang/Exception;
    const-string v1, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
.end method

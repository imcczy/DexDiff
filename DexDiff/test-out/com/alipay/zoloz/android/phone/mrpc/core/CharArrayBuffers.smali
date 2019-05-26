.class Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;
.super Ljava/lang/Object;
.source "SourceFile"

.field final static uppercaseAddon:C = ' '

.method constructor <init>()V
  .registers 1
  .prologue
  .line 27
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(C)C
  .registers 2
  .prologue
  .line 84
    const/16 v0, 65
    if-lt p0, v0, :L0
    const/16 v0, 90
    if-gt p0, v0, :L0
  .line 85
    add-int/lit8 v0, p0, 32
    int-to-char p0, v0
  :L0
  .line 87
    return p0
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
  .registers 11
  .prologue
    const/4 v1, 1
    const/4 v2, 0
  .line 41
    invoke-virtual { p0 }, Lorg/apache/http/util/CharArrayBuffer;->length()I
    move-result v0
  .line 42
    invoke-virtual { p0 }, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C
    move-result-object v4
  :L0
  .line 43
    if-ge p1, v0, :L1
    aget-char v3, v4, p1
    invoke-static { v3 }, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z
    move-result v3
    if-eqz v3, :L1
  .line 44
    add-int/lit8 p1, p1, 1
    goto :L0
  :L1
  .line 46
    invoke-virtual { p2 }, Ljava/lang/String;->length()I
    move-result v5
  .line 47
    add-int v3, p1, v5
    if-lt v0, v3, :L5
    move v0, v1
  :L2
    move v3, v2
  :L3
  .line 48
    if-eqz v0, :L7
    if-ge v3, v5, :L7
  .line 49
    add-int v6, p1, v3
    aget-char v6, v4, v6
  .line 50
    invoke-virtual { p2, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v7
  .line 51
    if-eq v6, v7, :L4
  .line 52
    invoke-static { v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;->a(C)C
    move-result v0
  .line 53
    invoke-static { v7 }, Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;->a(C)C
    move-result v6
  .line 54
    if-ne v0, v6, :L6
    move v0, v1
  :L4
  .line 48
    add-int/lit8 v3, v3, 1
    goto :L3
  :L5
    move v0, v2
  .line 47
    goto :L2
  :L6
    move v0, v2
  .line 54
    goto :L4
  :L7
  .line 57
    return v0
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
  .registers 7
  .prologue
  .line 66
    const/4 v0, 0
  .line 67
    invoke-virtual { p0 }, Lorg/apache/http/util/CharArrayBuffer;->length()I
    move-result v1
  .line 68
    invoke-virtual { p0 }, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C
    move-result-object v2
  :L0
  .line 70
    if-ge v0, v1, :L4
  .line 71
    aget-char v3, v2, v0
  .line 72
    if-ne v3, p1, :L2
  :L1
  .line 80
    return v0
  :L2
  .line 74
    const/16 v4, 65
    if-lt v3, v4, :L3
    const/16 v4, 90
    if-gt v3, v4, :L3
  .line 76
    add-int/lit8 v3, v3, 32
    int-to-char v3, v3
  .line 77
    aput-char v3, v2, v0
  :L3
  .line 70
    add-int/lit8 v0, v0, 1
    goto :L0
  :L4
  .line 80
    const/4 v0, -1
    goto :L1
.end method

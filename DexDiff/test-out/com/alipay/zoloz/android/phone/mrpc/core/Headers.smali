.class public final Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/android/phone/mrpc/core/Headers$HeaderCallback;
  }
.end annotation

.field public final static ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public final static CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public final static CONN_CLOSE:I = 1

.field public final static CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public final static CONN_KEEP_ALIVE:I = 2

.field public final static CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public final static CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public final static CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public final static CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public final static ETAG:Ljava/lang/String; = "etag"

.field public final static EXPIRES:Ljava/lang/String; = "expires"

.field public final static LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public final static LOCATION:Ljava/lang/String; = "location"

.field public final static NO_CONN_TYPE:I = 0

.field public final static NO_CONTENT_LENGTH:J = -1L

.field public final static NO_TRANSFER_ENCODING:J = 0L

.field public final static PRAGMA:Ljava/lang/String; = "pragma"

.field public final static PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public final static PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public final static REFRESH:Ljava/lang/String; = "refresh"

.field public final static SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public final static TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public final static WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public final static X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private final static f:[Ljava/lang/String;

.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private h:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 124
    const/16 v0, 19
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "transfer-encoding"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "content-length"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "content-type"
    aput-object v2, v0, v1
    const/4 v1, 3
    const-string v2, "content-encoding"
    aput-object v2, v0, v1
    const/4 v1, 4
    const-string v2, "connection"
    aput-object v2, v0, v1
    const/4 v1, 5
    const-string v2, "location"
    aput-object v2, v0, v1
    const/4 v1, 6
    const-string v2, "proxy-connection"
    aput-object v2, v0, v1
    const/4 v1, 7
    const-string v2, "www-authenticate"
    aput-object v2, v0, v1
    const/16 v1, 8
    const-string v2, "proxy-authenticate"
    aput-object v2, v0, v1
    const/16 v1, 9
    const-string v2, "content-disposition"
    aput-object v2, v0, v1
    const/16 v1, 10
    const-string v2, "accept-ranges"
    aput-object v2, v0, v1
    const/16 v1, 11
    const-string v2, "expires"
    aput-object v2, v0, v1
    const/16 v1, 12
    const-string v2, "cache-control"
    aput-object v2, v0, v1
    const/16 v1, 13
    const-string v2, "last-modified"
    aput-object v2, v0, v1
    const/16 v1, 14
    const-string v2, "etag"
    aput-object v2, v0, v1
    const/16 v1, 15
    const-string v2, "set-cookie"
    aput-object v2, v0, v1
    const/16 v1, 16
    const-string v2, "pragma"
    aput-object v2, v0, v1
    const/16 v1, 17
    const-string v2, "refresh"
    aput-object v2, v0, v1
    const/16 v1, 18
    const-string v2, "x-permitted-cross-domain-policies"
    aput-object v2, v0, v1
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->f:[Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .prologue
    const/4 v2, 4
  .line 150
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 121
    new-instance v0, Ljava/util/ArrayList;
    const/4 v1, 2
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;
  .line 123
    const/16 v0, 19
    new-array v0, v0, [Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
  .line 147
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0, v2 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;
  .line 148
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0, v2 }, Ljava/util/ArrayList;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;
  .line 151
    const-wide/16 v0, 0
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a:J
  .line 152
    const-wide/16 v0, -1
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->b:J
  .line 153
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->c:I
  .line 154
    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
  .registers 4
  .prologue
  .line 454
    const-string v0, "Close"
    invoke-static { p1, p2, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  .line 456
    const/4 v0, 1
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->c:I
  :L0
  .line 461
    return-void
  :L1
  .line 457
    const-string v0, "Keep-Alive"
    invoke-static { p1, p2, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    move-result v0
    if-eqz v0, :L0
  .line 459
    const/4 v0, 2
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->c:I
    goto :L0
.end method

.method public getAcceptRanges()Ljava/lang/String;
  .registers 3
  .prologue
  .line 340
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 10
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
  .registers 3
  .prologue
  .line 348
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 12
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getConnectionType()I
  .registers 2
  .prologue
  .line 312
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->c:I
    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
  .registers 3
  .prologue
  .line 336
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 9
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
  .registers 3
  .prologue
  .line 320
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 3
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getContentLength()J
  .registers 3
  .prologue
  .line 308
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->b:J
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
  .registers 3
  .prologue
  .line 316
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 2
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
  .registers 3
  .prologue
  .line 356
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 14
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
  .registers 3
  .prologue
  .line 344
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 11
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getHeaders(Lcom/alipay/zoloz/android/phone/mrpc/core/Headers$HeaderCallback;)V
  .registers 6
  .prologue
    const/4 v0, 0
  .line 435
    move v1, v0
  :L0
    const/16 v2, 19
    if-ge v1, v2, :L2
  .line 436
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aget-object v2, v2, v1
  .line 437
    if-eqz v2, :L1
  .line 438
    sget-object v3, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->f:[Ljava/lang/String;
    aget-object v3, v3, v1
    invoke-interface { p1, v3, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 435
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 441
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v3
    move v2, v0
  :L3
  .line 442
    if-ge v2, v3, :L4
  .line 447
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;
  .line 448
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 447
    invoke-interface { p1, v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V
  .line 442
    add-int/lit8 v0, v2, 1
    move v2, v0
    goto :L3
  :L4
  .line 451
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
  .registers 3
  .prologue
  .line 352
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 13
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
  .registers 3
  .prologue
  .line 324
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 5
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
  .registers 3
  .prologue
  .line 364
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 16
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
  .registers 3
  .prologue
  .line 332
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 8
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
  .registers 3
  .prologue
  .line 368
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 17
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 360
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;
    return-object v0
.end method

.method public getTransferEncoding()J
  .registers 3
  .prologue
  .line 304
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a:J
    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
  .registers 3
  .prologue
  .line 328
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 7
    aget-object v0, v0, v1
    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
  .registers 3
  .prologue
  .line 372
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 18
    aget-object v0, v0, v1
    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
  .catch Ljava/lang/NumberFormatException; { :L6 .. :L7 } :L8
  .registers 10
  .prologue
    const-wide/16 v6, -1
    const/4 v5, 0
    const/16 v4, 12
  .line 157
    const/16 v0, 58
    invoke-static { p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    move-result v0
  .line 158
    const/4 v1, -1
    if-ne v0, v1, :L1
  :L0
  .line 301
    return-void
  :L1
  .line 161
    invoke-virtual { p1, v5, v0 }, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
    move-result-object v1
  .line 162
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v2
    if-eqz v2, :L0
  .line 165
    add-int/lit8 v0, v0, 1
  .line 167
    invoke-virtual { p1 }, Lorg/apache/http/util/CharArrayBuffer;->length()I
    move-result v2
    invoke-virtual { p1, v0, v2 }, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;
    move-result-object v2
  .line 172
    invoke-virtual { v1 }, Ljava/lang/String;->hashCode()I
    move-result v3
    sparse-switch v3, :L27
  .line 298
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->g:Ljava/util/ArrayList;
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 299
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->h:Ljava/util/ArrayList;
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L0
  :L2
  .line 174
    const-string v3, "transfer-encoding"
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 175
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aput-object v2, v1, v5
  .line 176
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;
    new-instance v3, Lorg/apache/http/message/ParserCursor;
  .line 178
    invoke-virtual { p1 }, Lorg/apache/http/util/CharArrayBuffer;->length()I
    move-result v4
    invoke-direct { v3, v0, v4 }, Lorg/apache/http/message/ParserCursor;-><init>(II)V
  .line 177
    invoke-virtual { v1, p1, v3 }, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    move-result-object v0
  .line 181
    array-length v1, v0
  .line 182
    const-string v3, "identity"
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L3
  .line 183
    iput-wide v6, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a:J
    goto :L0
  :L3
  .line 184
    if-lez v1, :L4
    const-string v2, "chunked"
    add-int/lit8 v1, v1, -1
    aget-object v0, v0, v1
  .line 186
    invoke-interface { v0 }, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L4
  .line 187
    const-wide/16 v0, -2
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a:J
    goto :L0
  :L4
  .line 189
    iput-wide v6, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a:J
    goto :L0
  :L5
  .line 194
    const-string v0, "content-length"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 195
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 1
    aput-object v2, v0, v1
  :L6
  .line 197
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->b:J
  :L7
    goto :L0
  :L8
  .line 198
    move-exception v0
    goto :L0
  :L9
  .line 203
    const-string v0, "content-type"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 204
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 2
    aput-object v2, v0, v1
    goto/16 :L0
  :L10
  .line 208
    const-string v0, "content-encoding"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 209
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 3
    aput-object v2, v0, v1
    goto/16 :L0
  :L11
  .line 213
    const-string v3, "connection"
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 214
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v3, 4
    aput-object v2, v1, v3
  .line 215
    invoke-direct { p0, p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V
    goto/16 :L0
  :L12
  .line 219
    const-string v0, "location"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 220
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 5
    aput-object v2, v0, v1
    goto/16 :L0
  :L13
  .line 224
    const-string v3, "proxy-connection"
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 225
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v3, 6
    aput-object v2, v1, v3
  .line 226
    invoke-direct { p0, p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V
    goto/16 :L0
  :L14
  .line 230
    const-string v0, "www-authenticate"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 231
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 7
    aput-object v2, v0, v1
    goto/16 :L0
  :L15
  .line 235
    const-string v0, "proxy-authenticate"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 8
    aput-object v2, v0, v1
    goto/16 :L0
  :L16
  .line 240
    const-string v0, "content-disposition"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 241
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 9
    aput-object v2, v0, v1
    goto/16 :L0
  :L17
  .line 245
    const-string v0, "accept-ranges"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 246
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 10
    aput-object v2, v0, v1
    goto/16 :L0
  :L18
  .line 250
    const-string v0, "expires"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 251
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 11
    aput-object v2, v0, v1
    goto/16 :L0
  :L19
  .line 255
    const-string v0, "cache-control"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 258
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aget-object v0, v0, v4
    if-eqz v0, :L20
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aget-object v0, v0, v4
  .line 259
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v0
    if-lez v0, :L20
  .line 260
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aget-object v3, v1, v4
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v3, 44
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    aput-object v0, v1, v4
    goto/16 :L0
  :L20
  .line 262
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    aput-object v2, v0, v4
    goto/16 :L0
  :L21
  .line 267
    const-string v0, "last-modified"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 268
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 13
    aput-object v2, v0, v1
    goto/16 :L0
  :L22
  .line 272
    const-string v0, "etag"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 273
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 14
    aput-object v2, v0, v1
    goto/16 :L0
  :L23
  .line 277
    const-string v0, "set-cookie"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 278
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 15
    aput-object v2, v0, v1
  .line 279
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->d:Ljava/util/ArrayList;
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto/16 :L0
  :L24
  .line 283
    const-string v0, "pragma"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 284
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 16
    aput-object v2, v0, v1
    goto/16 :L0
  :L25
  .line 288
    const-string v0, "refresh"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 289
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 17
    aput-object v2, v0, v1
    goto/16 :L0
  :L26
  .line 293
    const-string v0, "x-permitted-cross-domain-policies"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 294
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 18
    aput-object v2, v0, v1
    goto/16 :L0
  .line 172
  :L27
  .sparse-switch
    -1345594014 -> :L26
    -1309235404 -> :L18
    -1267267485 -> :L16
    -1132779846 -> :L5
    -980228804 -> :L24
    -775651618 -> :L11
    -301767724 -> :L15
    -243037365 -> :L14
    -208775662 -> :L19
    3123477 -> :L22
    150043680 -> :L21
    285929373 -> :L13
    785670158 -> :L9
    1085444827 -> :L25
    1237214767 -> :L23
    1274458357 -> :L2
    1397189435 -> :L17
    1901043637 -> :L12
    2095084583 -> :L10
  .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 404
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 10
    aput-object p1, v0, v1
  .line 405
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 412
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 12
    aput-object p1, v0, v1
  .line 413
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 400
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 9
    aput-object p1, v0, v1
  .line 401
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 384
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 3
    aput-object p1, v0, v1
  .line 385
    return-void
.end method

.method public setContentLength(J)V
  .registers 4
  .prologue
  .line 376
    iput-wide p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->b:J
  .line 377
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 380
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 2
    aput-object p1, v0, v1
  .line 381
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 420
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 14
    aput-object p1, v0, v1
  .line 421
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 408
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 11
    aput-object p1, v0, v1
  .line 409
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 416
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 13
    aput-object p1, v0, v1
  .line 417
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 388
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 5
    aput-object p1, v0, v1
  .line 389
    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 396
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 8
    aput-object p1, v0, v1
  .line 397
    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 392
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/4 v1, 7
    aput-object p1, v0, v1
  .line 393
    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 424
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Headers;->e:[Ljava/lang/String;
    const/16 v1, 18
    aput-object p1, v0, v1
  .line 425
    return-void
.end method

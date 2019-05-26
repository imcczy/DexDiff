.class public Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;
.super Ljava/lang/Object;
.implements Lorg/apache/http/client/HttpRequestRetryHandler;
.source "SourceFile"

.field final static TAG:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 18
    const-class v0, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;
    invoke-virtual { v0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
  .registers 8
  .prologue
    const/4 v1, 1
    const/4 v0, 0
  .line 23
    const/4 v2, 3
    if-lt p2, v2, :L1
  :L0
  .line 35
    return v0
  :L1
  .line 27
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;
    if-eqz v2, :L2
  .line 28
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;
    const-string v2, "exception instanceof NoHttpResponseException"
    invoke-static { v0, v2 }, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    move v0, v1
  .line 29
    goto :L0
  :L2
  .line 31
    instance-of v2, p1, Ljava/net/SocketException;
    if-nez v2, :L3
    instance-of v2, p1, Ljavax/net/ssl/SSLException;
    if-eqz v2, :L0
  :L3
    invoke-virtual { p1 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L0
    invoke-virtual { p1 }, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    move-result-object v2
    const-string v3, "Broken pipe"
    invoke-virtual { v2, v3 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :L0
  .line 32
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;
    const-string v2, "exception instanceof SocketException:Broken pipe"
    invoke-static { v0, v2 }, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    move v0, v1
  .line 33
    goto :L0
.end method

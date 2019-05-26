.class Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "SourceFile"

.field mRedirects:I

.field final synthetic this$1:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;

.method constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;)V
  .registers 2
  .prologue
  .line 205
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;->this$1:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;
    invoke-direct { p0 }, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V
    return-void
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
  .registers 6
  .prologue
  .line 213
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I
  .line 214
    invoke-super { p0, p1, p2 }, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    move-result v0
  .line 215
    if-nez v0, :L1
    iget v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;->mRedirects:I
    const/4 v2, 5
    if-ge v1, v2, :L1
  .line 216
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v1
    invoke-interface { v1 }, Lorg/apache/http/StatusLine;->getStatusCode()I
    move-result v1
  .line 217
    const/16 v2, 301
    if-eq v1, v2, :L0
    const/16 v2, 302
    if-ne v1, v2, :L1
  :L0
  .line 218
    const/4 v0, 1
  :L1
  .line 221
    return v0
.end method

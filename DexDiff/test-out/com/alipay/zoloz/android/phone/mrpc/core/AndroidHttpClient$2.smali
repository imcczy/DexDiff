.class Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;

.method constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
  .registers 4
  .prologue
  .line 181
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    invoke-direct { p0, p2, p3 }, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    return-void
.end method

.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
  .registers 2
  .prologue
  .line 229
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$2;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$2;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;)V
  .line 235
    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
  .registers 4
  .prologue
  .line 196
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;
    invoke-direct { v0 }, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V
  .line 197
    const-string v1, "http.authscheme-registry"
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
  .line 198
    const-string v1, "http.cookiespec-registry"
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
  .line 199
    const-string v1, "http.auth.credentials-provider"
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
  .line 200
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
  .registers 5
  .prologue
  .line 185
    invoke-super { p0 }, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    move-result-object v0
  .line 186
    invoke-static { }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
  .line 187
    new-instance v1, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    const/4 v3, 0
    invoke-direct { v1, v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;)V
    invoke-virtual { v0, v1 }, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
  .line 189
    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
  .registers 2
  .prologue
  .line 205
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$1;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;)V
  .line 224
    return-object v0
.end method

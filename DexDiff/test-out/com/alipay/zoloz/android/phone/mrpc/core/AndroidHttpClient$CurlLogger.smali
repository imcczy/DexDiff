.class Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.implements Lorg/apache/http/HttpRequestInterceptor;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 2
  name = "CurlLogger"
.end annotation

.field final synthetic this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;

.method private constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;)V
  .registers 2
  .prologue
  .line 460
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;)V
  .registers 3
  .prologue
  .line 460
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;)V
    return-void
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
  .registers 5
  .prologue
  .line 462
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->access$300(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    move-result-object v0
  .line 463
    if-eqz v0, :L0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;)Z
    move-result v1
    if-eqz v1, :L0
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz v1, :L0
  .line 467
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v1, 0
    invoke-static { p1, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
  :L0
  .line 469
    return-void
.end method

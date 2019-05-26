.class final Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;
.super Ljava/lang/Object;
.implements Lorg/apache/http/HttpRequestInterceptor;
.source "SourceFile"

.method constructor <init>()V
  .registers 1
  .prologue
  .line 95
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
  .registers 5
  .prologue
  .line 99
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    if-eqz v0, :L0
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    if-ne v0, v1, :L0
  .line 100
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "This thread forbids HTTP requests"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 103
    return-void
.end method

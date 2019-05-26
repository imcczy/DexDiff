.class Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$2;
.super Ljava/lang/Object;
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.source "SourceFile"

.field final synthetic this$1:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;

.method constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;)V
  .registers 2
  .prologue
  .line 229
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2$2;->this$1:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
  .registers 5
  .prologue
  .line 232
    const-wide/32 v0, 180000
    return-wide v0
.end method

.class public abstract Lcom/alipay/zoloz/android/phone/mrpc/core/Request;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Z

.field protected mCallback:Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 9
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 13
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->a:Z
    return-void
.end method

.method public cancel()V
  .registers 2
  .prologue
  .line 42
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->a:Z
  .line 43
    return-void
.end method

.method public getCallback()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    return-object v0
.end method

.method public isCanceled()Z
  .registers 2
  .prologue
  .line 50
    iget-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->a:Z
    return v0
.end method

.method public setTransportCallback(Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;)V
  .registers 2
  .prologue
  .line 35
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->mCallback:Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
  .line 36
    return-void
.end method

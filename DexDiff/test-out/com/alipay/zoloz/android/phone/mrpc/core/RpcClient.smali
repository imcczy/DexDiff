.class public abstract Lcom/alipay/zoloz/android/phone/mrpc/core/RpcClient;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 9
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Class",
      "<TT;>;",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;",
      ")TT;"
    }
  .end annotation
.end method

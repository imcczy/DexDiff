.class public Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;
.super Ljava/lang/Object;
.implements Ljava/lang/reflect/InvocationHandler;
.source "SourceFile"

.field protected mClazz:Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/Class",
      "<*>;"
    }
  .end annotation
.end field

.field protected mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;

.field protected mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/Config;",
      "Ljava/lang/Class",
      "<*>;",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;",
      ")V"
    }
  .end annotation
  .registers 4
  .prologue
  .line 34
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 35
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;->mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
  .line 36
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;
  .line 37
    iput-object p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
  .line 38
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
  .registers 6
  .prologue
  .line 42
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;
    invoke-virtual { v0, p1, v1, p2, p3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

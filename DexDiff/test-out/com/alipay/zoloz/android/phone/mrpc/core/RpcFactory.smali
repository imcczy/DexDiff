.class public Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;

.field protected mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;)V
  .registers 3
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 21
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
  .line 22
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
  .line 23
    return-void
.end method

.method public getConfig()Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
  .registers 2
  .prologue
  .line 33
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Class",
      "<TT;>;)TT;"
    }
  .end annotation
  .registers 7
  .prologue
  .line 27
    invoke-virtual { p1 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Class;
    const/4 v2, 0
    aput-object p1, v1, v2
    new-instance v2, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->mRpcInvoker:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
    invoke-direct { v2, v3, p1, v4 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvocationHandler;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;)V
    invoke-static { v0, v1, v2 }, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

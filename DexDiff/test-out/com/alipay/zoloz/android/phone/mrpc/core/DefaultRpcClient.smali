.class public Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/RpcClient;
.source "SourceFile"

.field private a:Landroid/content/Context;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .prologue
  .line 12
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcClient;-><init>()V
  .line 13
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;
  .line 14
    return-void
.end method

.method private a(Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
  .registers 3
  .prologue
  .line 22
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;
    invoke-direct { v0, p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)V
    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;
  .registers 2
  .prologue
  .line 8
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;->a:Landroid/content/Context;
    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;
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
  .registers 5
  .prologue
  .line 18
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;
    invoke-direct { p0, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;->a(Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;)V
    invoke-virtual { v0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

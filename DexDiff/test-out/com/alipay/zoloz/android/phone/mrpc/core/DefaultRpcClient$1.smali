.class Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;

.field final synthetic val$rpcParams:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;

.method constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;)V
  .registers 3
  .prologue
  .line 22
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;->access$000(Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    return-object v0
.end method

.method public getRpcParams()Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
  .registers 2
  .prologue
  .line 36
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
    return-object v0
.end method

.method public getTransport()Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;
  .registers 2
  .prologue
  .line 31
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    move-result-object v0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public isGzip()Z
  .registers 2
  .prologue
  .line 46
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->isGzip()Z
    move-result v0
    return v0
.end method

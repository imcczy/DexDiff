.class Lcom/alipay/zoloz/toyger/workspace/f;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
  .registers 2
  .prologue
  .line 263
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/f;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .prologue
  .line 267
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/f;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/upload/UploadManager;
    move-result-object v0
    if-eqz v0, :L1
  .line 268
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/f;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/upload/UploadManager;
    move-result-object v0
    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->LIVENESS_FAILED:Lcom/alipay/mobile/security/faceauth/InvokeType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->uploadBehaviourLog(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
  :L1
  .line 273
    return-void
  :L2
  .line 270
    move-exception v0
    goto :L1
.end method

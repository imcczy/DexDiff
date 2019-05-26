.class Lcom/alipay/zoloz/toyger/workspace/g;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
  .registers 2
  .prologue
  .line 278
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/g;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 281
    const-string v0, "zolozTime"
    const-string v1, "sendresponse liveness fail!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 282
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/g;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/g;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    move-result-object v1
    sget-object v2, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->getAlertReturnCode(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
  .line 283
    return-void
.end method

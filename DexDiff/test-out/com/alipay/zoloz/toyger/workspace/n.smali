.class Lcom/alipay/zoloz/toyger/workspace/n;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/m;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/m;)V
  .registers 2
  .prologue
  .line 1137
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/n;->a:Lcom/alipay/zoloz/toyger/workspace/m;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 1141
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/n;->a:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    move-result-object v0
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_TIMEOUT:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  .line 1142
    return-void
.end method

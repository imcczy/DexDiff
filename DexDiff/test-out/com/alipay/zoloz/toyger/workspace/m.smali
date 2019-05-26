.class Lcom/alipay/zoloz/toyger/workspace/m;
.super Ljava/lang/Object;
.implements Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
  .registers 2
  .prologue
  .line 1132
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public countdown(I)V
  .registers 4
  .prologue
  .line 1136
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$800(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    move-result-object v0
    if-eqz v0, :L3
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$800(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->isTimeOut()Z
    move-result v0
    if-eqz v0, :L3
  .line 1137
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$900(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Landroid/os/Handler;
    move-result-object v0
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/n;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/n;-><init>(Lcom/alipay/zoloz/toyger/workspace/m;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L0
  .line 1156
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Z
    move-result v0
    if-eqz v0, :L1
  .line 1157
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1102(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Z)Z
  :L1
  .line 1159
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$900(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Landroid/os/Handler;
    move-result-object v0
    if-eqz v0, :L2
  .line 1160
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$900(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Landroid/os/Handler;
    move-result-object v0
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/p;
    invoke-direct { v1, p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/p;-><init>(Lcom/alipay/zoloz/toyger/workspace/m;I)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L2
  .line 1174
    return-void
  :L3
  .line 1145
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$800(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v0
    if-eqz v0, :L0
  .line 1146
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Z
    move-result v0
    if-nez v0, :L0
  .line 1147
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$900(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Landroid/os/Handler;
    move-result-object v0
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/o;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/o;-><init>(Lcom/alipay/zoloz/toyger/workspace/m;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L0
.end method

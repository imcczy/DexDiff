.class Lcom/alipay/zoloz/toyger/workspace/o;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/m;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/m;)V
  .registers 2
  .prologue
  .line 1147
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/o;->a:Lcom/alipay/zoloz/toyger/workspace/m;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 1151
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/o;->a:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/o;->a:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->showFaceStatus(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .line 1152
    return-void
.end method

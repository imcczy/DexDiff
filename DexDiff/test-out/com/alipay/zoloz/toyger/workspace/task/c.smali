.class Lcom/alipay/zoloz/toyger/workspace/task/c;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)V
  .registers 2
  .prologue
  .line 236
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/c;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 239
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/c;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->access$102(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;Z)Z
  .line 240
    return-void
.end method

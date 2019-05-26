.class Lcom/alipay/zoloz/toyger/workspace/i;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;DD)V
  .registers 6
  .prologue
  .line 476
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/i;->c:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-wide p2, p0, Lcom/alipay/zoloz/toyger/workspace/i;->a:D
    iput-wide p4, p0, Lcom/alipay/zoloz/toyger/workspace/i;->b:D
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 7
  .prologue
  .line 479
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/i;->c:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    iget-wide v2, p0, Lcom/alipay/zoloz/toyger/workspace/i;->a:D
    iget-wide v4, p0, Lcom/alipay/zoloz/toyger/workspace/i;->b:D
    invoke-virtual { v0, v2, v3, v4, v5 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->onPreviewChanged(DD)V
  .line 480
    return-void
.end method

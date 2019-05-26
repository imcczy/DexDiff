.class Lcom/alipay/zoloz/toyger/workspace/d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/mobile/security/bio/task/ActionFrame;

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .registers 3
  .prologue
  .line 228
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/d;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/d;->a:Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 231
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/d;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/d;->a:Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->onDoAction(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 232
    return-void
.end method

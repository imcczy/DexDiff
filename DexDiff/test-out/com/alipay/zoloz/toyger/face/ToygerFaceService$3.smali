.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
  .registers 2
  .prologue
  .line 333
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 336
    invoke-static { }, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->reset()V
  .line 337
    const-string v0, "TOYGER"
    const-string v1, "toyger is reset"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 338
    return-void
.end method

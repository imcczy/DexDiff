.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Ljava/util/concurrent/CountDownLatch;)V
  .registers 3
  .prologue
  .line 347
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 350
    const-string v0, "TOYGER"
    const-string v1, "before releasing toyger"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 351
    invoke-static { }, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->release()V
  .line 352
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual { v0 }, Ljava/util/concurrent/CountDownLatch;->countDown()V
  .line 353
    const-string v0, "TOYGER"
    const-string v1, "toyger is released"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 354
    return-void
.end method

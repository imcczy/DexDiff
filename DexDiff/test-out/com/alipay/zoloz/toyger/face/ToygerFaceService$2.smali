.class Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.method constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
  .registers 2
  .prologue
  .line 263
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L12
  .catch Ljava/lang/Throwable; { :L1 .. :L3 } :L4
  .catchall { :L1 .. :L3 } :L13
  .catchall { :L5 .. :L6 } :L13
  .catch Ljava/lang/Throwable; { :L6 .. :L7 } :L12
  .catch Ljava/lang/Throwable; { :L8 .. :L10 } :L4
  .catchall { :L8 .. :L10 } :L13
  .catch Ljava/lang/Throwable; { :L10 .. :L11 } :L12
  .catch Ljava/lang/Throwable; { :L14 .. :L15 } :L12
  .registers 8
  :L0
  .prologue
  .line 267
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$200(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    move-result v0
    if-eqz v0, :L7
  .line 268
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$300(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;
    move-result-object v0
    const-wide/16 v2, 1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-interface { v0, v2, v3, v1 }, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/List;
  .line 269
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$400(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
  :L1
  .line 272
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 273
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 275
    if-eqz v0, :L10
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    if-eqz v2, :L10
  .line 276
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$700(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Z
    move-result v2
    if-eqz v2, :L9
  .line 277
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L2
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L8
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 278
    iget-object v4, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    iget v5, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget v6, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    invoke-static { v4, v5, v6 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$800([BII)[B
    move-result-object v4
    iput-object v4, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
  :L3
    goto :L2
  :L4
  .line 287
    move-exception v0
  :L5
  .line 288
    const-string v1, "TOYGER"
    const-string v2, "Failed to processImage()."
    invoke-static { v1, v2, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  :L6
  .line 290
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->clearFrame()V
  .line 292
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  .line 293
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  :L7
  .line 299
    return-void
  :L8
  .line 280
    iget-object v2, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    iget v3, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
    iget v4, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
    invoke-static { v2, v3, v4 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$900([SII)[S
    move-result-object v2
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  :L9
  .line 283
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    move-result-object v3
    const/4 v2, 0
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { v3, v2, v1 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->initFame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .line 284
    const-string v2, "TOYGER"
    const-string v3, "toyger is processing frame"
    invoke-static { v2, v3 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 285
    new-instance v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-direct { v2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;-><init>()V
    invoke-static { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/algorithm/Toyger;->processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  :L10
  .line 290
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->clearFrame()V
  .line 292
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  .line 293
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  :L11
    goto :L7
  :L12
  .line 296
    move-exception v0
  .line 297
    const-string v1, "TOYGER"
    const-string v2, "Failed to processImage"
    invoke-static { v1, v2, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L7
  :L13
  .line 290
    move-exception v0
  :L14
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->clearFrame()V
  .line 292
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  .line 293
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;->this$0:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    throw v0
  :L15
.end method

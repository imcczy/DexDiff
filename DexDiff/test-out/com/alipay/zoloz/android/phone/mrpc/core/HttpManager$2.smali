.class final Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$2;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.source "SourceFile"

.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.method constructor <init>()V
  .registers 3
  .prologue
  .line 196
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    return-void
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 5
  .prologue
  .line 201
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "com.alipay.zoloz.mobile.common.transport.http.HttpManager.HttpWorker #"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 203
    invoke-virtual { v2 }, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, p1, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 204
    const/4 v1, 4
  .line 205
    invoke-virtual { v0, v1 }, Ljava/lang/Thread;->setPriority(I)V
  .line 206
    return-object v0
.end method

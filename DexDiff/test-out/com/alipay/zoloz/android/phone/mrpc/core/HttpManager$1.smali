.class Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/util/concurrent/FutureTask",
    "<",
    "Lcom/alipay/zoloz/android/phone/mrpc/core/Response;",
    ">;"
  }
.end annotation

.field final synthetic this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;

.field final synthetic val$httpWorker:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;

.method constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;)V
  .registers 4
  .prologue
  .line 129
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->this$0:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    iput-object p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
    invoke-direct { p0, p2 }, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
    return-void
.end method

.method protected done()V
  .catch Ljava/lang/InterruptedException; { :L1 .. :L5 } :L6
  .catch Ljava/util/concurrent/ExecutionException; { :L1 .. :L5 } :L10
  .catch Ljava/util/concurrent/CancellationException; { :L1 .. :L5 } :L12
  .catch Ljava/lang/Throwable; { :L1 .. :L5 } :L13
  .catch Ljava/lang/InterruptedException; { :L8 .. :L9 } :L6
  .catch Ljava/util/concurrent/ExecutionException; { :L8 .. :L9 } :L10
  .catch Ljava/util/concurrent/CancellationException; { :L8 .. :L9 } :L12
  .catch Ljava/lang/Throwable; { :L8 .. :L9 } :L13
  .registers 6
  .prologue
  .line 132
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getRequest()Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    move-result-object v1
  .line 133
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->getCallback()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v2
  .line 134
    if-nez v2, :L1
  .line 135
    invoke-super { p0 }, Ljava/util/concurrent/FutureTask;->done()V
  :L0
  .line 170
    return-void
  :L1
  .line 140
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
  .line 141
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z
    move-result v3
    if-nez v3, :L2
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->isCanceled()Z
    move-result v3
    if-eqz v3, :L7
  :L2
  .line 142
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->cancel()V
  .line 143
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z
    move-result v0
    if-eqz v0, :L3
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->isDone()Z
    move-result v0
    if-nez v0, :L4
  :L3
  .line 144
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;->cancel(Z)Z
  :L4
  .line 146
    invoke-interface { v2, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;)V
  :L5
    goto :L0
  :L6
  .line 150
    move-exception v0
  .line 151
    const/4 v3, 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v4, ""
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v2, v1, v3, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
    goto :L0
  :L7
  .line 147
    if-eqz v0, :L0
  :L8
  .line 148
    invoke-interface { v2, v1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onPostExecute(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;Lcom/alipay/zoloz/android/phone/mrpc/core/Response;)V
  :L9
    goto :L0
  :L10
  .line 152
    move-exception v0
  .line 153
    if-eqz v0, :L11
    invoke-virtual { v0 }, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
    move-result-object v3
    if-eqz v3, :L11
    invoke-virtual { v0 }, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
    move-result-object v3
    instance-of v3, v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    if-eqz v3, :L11
  .line 154
    invoke-virtual { v0 }, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 155
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getCode()I
    move-result v3
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v2, v1, v3, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
    goto :L0
  :L11
  .line 158
    const/4 v3, 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v4, ""
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v2, v1, v3, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
    goto/16 :L0
  :L12
  .line 164
    move-exception v0
  .line 165
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Request;->cancel()V
  .line 166
    invoke-interface { v2, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;)V
    goto/16 :L0
  :L13
  .line 167
    move-exception v0
  .line 168
    new-instance v1, Ljava/lang/RuntimeException;
    const-string v2, "An error occured while executing http request"
    invoke-direct { v1, v2, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

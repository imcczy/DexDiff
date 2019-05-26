.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;
.source "SourceFile"

.field private a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
  .registers 14
  .prologue
  .line 37
    const-string v5, "application/x-www-form-urlencoded"
    move-object v0, p0
    move-object v1, p2
    move v2, p3
    move-object v3, p4
    move-object v4, p5
    move v6, p6
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V
  .line 38
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
  .line 39
    return-void
.end method

.method private a(I)I
  .registers 2
  .prologue
  .line 102
  .line 103
    packed-switch p1, :L10
  :L0
  .line 133
    return p1
  :L1
  .line 105
    const/4 p1, 4
  .line 106
    goto :L0
  :L2
  .line 108
    const/4 p1, 7
  .line 109
    goto :L0
  :L3
  .line 111
    const/16 p1, 8
  .line 112
    goto :L0
  :L4
  .line 114
    const/4 p1, 6
  .line 115
    goto :L0
  :L5
  .line 117
    const/4 p1, 5
  .line 118
    goto :L0
  :L6
  .line 120
    const/4 p1, 3
  .line 121
    goto :L0
  :L7
  .line 123
    const/4 p1, 2
  .line 124
    goto :L0
  :L8
  .line 126
    const/16 p1, 16
  .line 127
    goto :L0
  :L9
  .line 129
    const/16 p1, 15
    goto :L0
  .line 103
  :L10
  .packed-switch 1
    :L7
    :L6
    :L1
    :L5
    :L4
    :L2
    :L3
    :L9
    :L8
  .end packed-switch
.end method

.method private a()Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;
  .registers 2
  .prologue
  .line 161
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    invoke-interface { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Config;->getTransport()Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;
    move-result-object v0
    return-object v0
.end method

.method private a(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)V
  .registers 5
  .prologue
  .line 143
    new-instance v0, Lorg/apache/http/message/BasicHeader;
    const-string v1, "uuid"
    invoke-static { }, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v0, v1, v2 }, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    invoke-virtual { p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V
  .line 145
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    invoke-interface { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Config;->getRpcParams()Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
    move-result-object v0
  .line 146
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->getHeaders()Ljava/util/List;
    move-result-object v0
  .line 147
    if-eqz v0, :L1
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-nez v1, :L1
  .line 148
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/apache/http/Header;
  .line 149
    invoke-virtual { p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V
    goto :L0
  :L1
  .line 152
    return-void
.end method

.method public call()Ljava/lang/Object;
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L1
  .catch Ljava/util/concurrent/ExecutionException; { :L0 .. :L1 } :L4
  .catch Ljava/util/concurrent/CancellationException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/InterruptedException; { :L2 .. :L3 } :L1
  .catch Ljava/util/concurrent/ExecutionException; { :L2 .. :L3 } :L4
  .catch Ljava/util/concurrent/CancellationException; { :L2 .. :L3 } :L6
  .registers 9
  .prologue
    const/16 v7, 13
    const/16 v6, 9
  .line 43
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    invoke-interface { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Config;->getUrl()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;-><init>(Ljava/lang/String;)V
  .line 45
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->mReqData:[B
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->setReqData([B)V
  .line 46
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->mContentType:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->setContentType(Ljava/lang/String;)V
  .line 47
    iget-boolean v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->mResetCookie:Z
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->setResetCookie(Z)V
  .line 48
    const-string v1, "id"
    iget v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->mId:I
    invoke-static { v2 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V
  .line 49
    const-string v1, "operationType"
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->mOperationType:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V
  .line 50
    const-string v1, "gzip"
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    invoke-interface { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Config;->isGzip()Z
    move-result v2
    invoke-static { v2 }, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V
  .line 52
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)V
  .line 53
    const-string v1, "HttpCaller"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "threadid = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
  .line 54
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Thread;->getId()J
    move-result-wide v4
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "; "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 53
    invoke-static { v1, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L0
  .line 64
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a()Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;
    move-result-object v1
    invoke-interface { v1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;->execute(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;
    move-result-object v0
  .line 65
    invoke-interface { v0 }, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
  .line 67
    if-nez v0, :L2
  .line 68
    new-instance v0, Lcom/alipay/zoloz/mobile/a/a/b;
    const/16 v1, 9
  .line 69
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "response is null"
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v0
  :L1
  .line 73
    move-exception v0
  .line 74
    new-instance v1, Lcom/alipay/zoloz/mobile/a/a/b;
  .line 75
    invoke-static { v7 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, ""
    invoke-direct { v1, v2, v3, v0 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L2
  .line 72
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->getResData()[B
  :L3
    move-result-object v0
    return-object v0
  :L4
  .line 76
    move-exception v0
    move-object v1, v0
  .line 77
    invoke-virtual { v1 }, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
    move-result-object v0
  .line 78
    if-eqz v0, :L5
    instance-of v2, v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    if-eqz v2, :L5
  .line 79
    check-cast v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 80
    new-instance v1, Lcom/alipay/zoloz/mobile/a/a/b;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getCode()I
    move-result v2
    invoke-direct { p0, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;->a(I)I
    move-result v2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
  .line 81
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v2, v0 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v1
  :L5
  .line 83
    new-instance v0, Lcom/alipay/zoloz/mobile/a/a/b;
    invoke-static { v6 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, ""
    invoke-direct { v0, v2, v3, v1 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v0
  :L6
  .line 88
    move-exception v0
  .line 89
    new-instance v1, Lcom/alipay/zoloz/mobile/a/a/b;
  .line 90
    invoke-static { v7 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, ""
    invoke-direct { v1, v2, v3, v0 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
.end method

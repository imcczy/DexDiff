.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/android/phone/mrpc/core/Transport;
.source "SourceFile"

.field public final static TAG:Ljava/lang/String; = "HttpManager"

.field private static a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;

.field private final static h:Ljava/util/concurrent/ThreadFactory;

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field mContext:Landroid/content/Context;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 26
    const/4 v0, 0
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  .line 196
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$2;
    invoke-direct { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$2;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->h:Ljava/util/concurrent/ThreadFactory;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .prologue
  .line 56
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 57
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;
  .line 58
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a()V
  .line 59
    return-void
.end method

.method private final static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 3
  .prologue
  .line 76
    const-class v1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    monitor-enter v1
  :L0
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    if-eqz v0, :L2
  .line 77
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  :L1
  .line 80
    monitor-exit v1
    return-object v0
  :L2
  .line 79
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;-><init>(Landroid/content/Context;)V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  .line 80
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  :L3
    goto :L1
  :L4
  .line 76
    move-exception v0
    monitor-exit v1
    throw v0
.end method

.method private a(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;",
      ")",
      "Ljava/util/concurrent/FutureTask",
      "<",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/Response;",
      ">;"
    }
  .end annotation
  .registers 3
  .prologue
  .line 129
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;
    invoke-direct { v0, p0, p1, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager$1;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;)V
  .line 172
    return-object v0
.end method

.method private a()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 12
  .prologue
    const/4 v10, 1
  .line 88
    const-string v0, "android"
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .line 91
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;
    const/16 v2, 10
    const/16 v3, 11
    const-wide/16 v4, 3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;
    const/16 v0, 20
    invoke-direct { v7, v0 }, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
    sget-object v8, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->h:Ljava/util/concurrent/ThreadFactory;
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;
    invoke-direct { v9 }, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V
    invoke-direct/range { v1 .. v9 }, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
  :L0
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
  :L1
  .line 98
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
  .line 99
    invoke-static { }, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    move-result-object v0
    invoke-virtual { v0, v10 }, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
  .line 100
    return-void
  :L2
  .line 95
    move-exception v0
    goto :L1
.end method

.method public final static getInstance(Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  .registers 2
  .prologue
  .line 69
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    if-eqz v0, :L1
  .line 70
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  :L0
  .line 72
    return-object v0
  :L1
    invoke-static { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a(Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    move-result-object v0
    goto :L0
.end method

.method public addConnectTime(J)V
  .registers 6
  .prologue
  .line 227
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->e:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->e:J
  .line 228
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->g:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->g:I
  .line 229
    return-void
.end method

.method public addDataSize(J)V
  .registers 6
  .prologue
  .line 217
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->d:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->d:J
  .line 218
    return-void
.end method

.method public addSocketTime(J)V
  .registers 6
  .prologue
  .line 238
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->f:J
    add-long/2addr v0, p1
    iput-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->f:J
  .line 239
    return-void
.end method

.method public close()V
  .registers 3
  .prologue
    const/4 v1, 0
  .line 284
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    if-eqz v0, :L0
  .line 285
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual { v0 }, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
  .line 286
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
  :L0
  .line 289
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    if-eqz v0, :L1
  .line 290
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->close()V
  :L1
  .line 291
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .line 292
    return-void
.end method

.method public dumpPerf()Ljava/lang/String;
  .registers 7
  .prologue
  .line 269
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "HttpManager"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
  .line 272
    invoke-virtual { p0 }, Ljava/lang/Object;->hashCode()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/16 v1, 9
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
  .line 274
    invoke-virtual { v3 }, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I
    move-result v3
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 1
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual { v3 }, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J
    move-result-wide v4
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 2
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
  .line 275
    invoke-virtual { v3 }, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J
    move-result-wide v4
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 3
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->getAverageSpeed()J
    move-result-wide v4
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 4
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->getAverageConnectTime()J
    move-result-wide v4
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 5
    iget-wide v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->d:J
  .line 276
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 6
    iget-wide v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->e:J
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/4 v2, 7
    iget-wide v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->f:J
    invoke-static { v4, v5 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v3
    aput-object v3, v1, v2
    const/16 v2, 8
    iget v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->g:I
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v1, v2
  .line 270
    invoke-static { v0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 269
    return-object v0
.end method

.method public execute(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;)Ljava/util/concurrent/Future;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/Request;",
      ")",
      "Ljava/util/concurrent/Future",
      "<",
      "Lcom/alipay/zoloz/android/phone/mrpc/core/Response;",
      ">;"
    }
  .end annotation
  .registers 4
  .prologue
  .line 103
    instance-of v0, p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    if-nez v0, :L0
  .line 104
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "request send error."
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 107
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/MiscUtils;->isDebugger(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  .line 108
    const-string v0, "HttpManager"
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->dumpPerf()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L1
  .line 111
    check-cast p1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
  .line 114
    invoke-virtual { p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->generateWorker(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
    move-result-object v0
  .line 115
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->a(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;)Ljava/util/concurrent/FutureTask;
    move-result-object v0
  .line 117
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual { v1, v0 }, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
  .line 125
    return-object v0
.end method

.method protected generateWorker(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
  .registers 3
  .prologue
  .line 183
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
    invoke-direct { v0, p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)V
    return-object v0
.end method

.method public getAverageConnectTime()J
  .registers 5
  .prologue
  .line 259
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->g:I
    if-nez v0, :L1
  .line 260
    const-wide/16 v0, 0
  :L0
  .line 262
    return-wide v0
  :L1
  .line 261
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->e:J
    iget v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->g:I
    int-to-long v2, v2
    div-long/2addr v0, v2
    goto :L0
.end method

.method public getAverageSpeed()J
  .registers 5
  .prologue
    const-wide/16 v0, 0
  .line 247
    iget-wide v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->f:J
    cmp-long v2, v2, v0
    if-nez v2, :L1
  :L0
  .line 250
    return-wide v0
  :L1
  .line 249
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->d:J
    const-wide/16 v2, 1000
    mul-long/2addr v0, v2
    iget-wide v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->f:J
    div-long/2addr v0, v2
  .line 250
    const/16 v2, 10
    shr-long/2addr v0, v2
    goto :L0
.end method

.method public getHttpClient()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .registers 2
  .prologue
  .line 193
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->c:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    return-object v0
.end method

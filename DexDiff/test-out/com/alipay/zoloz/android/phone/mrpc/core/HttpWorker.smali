.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/Callable;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/concurrent/Callable",
    "<",
    "Lcom/alipay/zoloz/android/phone/mrpc/core/Response;",
    ">;"
  }
.end annotation

.field private final static a:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lorg/apache/http/client/CookieStore;

.field private e:Landroid/webkit/CookieManager;

.field private f:Lorg/apache/http/entity/AbstractHttpEntity;

.field private g:Lorg/apache/http/HttpHost;

.field private h:Ljava/net/URL;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;

.field protected mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;

.field mUrl:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 66
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;
    invoke-direct { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/ZHttpRequestRetryHandler;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)V
  .registers 5
  .prologue
    const/4 v1, 0
  .line 159
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 94
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;
    invoke-direct { v0 }, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;
  .line 99
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;
    invoke-direct { v0 }, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;
  .line 129
    iput v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->i:I
  .line 134
    iput-boolean v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->j:Z
  .line 139
    iput-boolean v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->k:Z
  .line 144
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->l:Ljava/lang/String;
  .line 160
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
  .line 161
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    iget-object v0, v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;
  .line 162
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
  .line 163
    return-void
.end method

.method private a()Lorg/apache/http/client/methods/HttpUriRequest;
  .registers 4
  .prologue
  .line 229
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz v0, :L1
  .line 230
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
  :L0
  .line 242
    return-object v0
  :L1
  .line 233
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
    move-result-object v0
  .line 234
    if-eqz v0, :L3
  .line 235
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;
    move-result-object v2
    invoke-direct { v1, v2 }, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V
  .line 236
    invoke-virtual { v1, v0 }, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
  .line 237
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
  :L2
  .line 242
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :L0
  :L3
  .line 239
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;
    move-result-object v1
    invoke-direct { v0, v1 }, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :L2
.end method

.method private b()V
  .registers 2
  .prologue
  .line 457
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz v0, :L0
  .line 458
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface { v0 }, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
  :L0
  .line 460
    return-void
.end method

.method private c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
  .registers 2
  .prologue
  .line 463
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getCallback()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v0
    return-object v0
.end method

.method private d()Lorg/apache/http/HttpResponse;
  .registers 2
  .prologue
  .line 467
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->e()Lorg/apache/http/HttpResponse;
    move-result-object v0
    return-object v0
.end method

.method private e()Lorg/apache/http/HttpResponse;
  .registers 5
  .prologue
  .line 471
    const-string v0, "HttpWorker"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "By Http/Https to request. operationType="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " url="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
  .line 472
    invoke-interface { v2 }, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/net/URI;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 471
    invoke-static { v0, v1 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 475
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
    move-result-object v0
  .line 476
    const-string v1, "http.route.default-proxy"
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->l()Lorg/apache/http/HttpHost;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
  .line 478
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->i()Lorg/apache/http/HttpHost;
    move-result-object v0
  .line 479
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->j()I
    move-result v1
    const/16 v2, 80
    if-ne v1, v2, :L0
  .line 480
    new-instance v0, Lorg/apache/http/HttpHost;
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/net/URL;->getHost()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V
  :L0
  .line 483
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;
    invoke-virtual { v1, v0, v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    move-result-object v0
  .line 484
    return-object v0
.end method

.method private f()Ljava/lang/String;
  .registers 3
  .prologue
  .line 489
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L1
  .line 490
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;
  :L0
  .line 494
    return-object v0
  :L1
  .line 493
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const-string v1, "operationType"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;
  .line 494
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;
    goto :L0
.end method

.method private g()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .registers 2
  .prologue
  .line 501
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->getHttpClient()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v0
    return-object v0
.end method

.method private h()V
  .registers 5
  .prologue
  .line 510
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getHeaders()Ljava/util/ArrayList;
    move-result-object v0
  .line 511
    if-eqz v0, :L1
    invoke-virtual { v0 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v1
    if-nez v1, :L1
  .line 512
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/apache/http/Header;
  .line 513
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;
    move-result-object v2
    invoke-interface { v2, v0 }, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    goto :L0
  :L1
  .line 519
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
  .line 522
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V
  .line 525
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;
    move-result-object v0
    const-string v1, "cookie"
  .line 526
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 525
    invoke-interface { v0, v1, v2 }, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
  .line 527
    return-void
.end method

.method private i()Lorg/apache/http/HttpHost;
  .registers 5
  .prologue
  .line 537
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;
    if-eqz v0, :L1
  .line 538
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;
  :L0
  .line 544
    return-object v0
  :L1
  .line 541
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;
    move-result-object v0
  .line 542
    new-instance v1, Lorg/apache/http/HttpHost;
    invoke-virtual { v0 }, Ljava/net/URL;->getHost()Ljava/lang/String;
    move-result-object v2
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->j()I
    move-result v3
  .line 543
    invoke-virtual { v0 }, Ljava/net/URL;->getProtocol()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v2, v3, v0 }, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;
  .line 544
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;
    goto :L0
.end method

.method private j()I
  .registers 4
  .prologue
  .line 548
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;
    move-result-object v0
  .line 549
    invoke-virtual { v0 }, Ljava/net/URL;->getPort()I
    move-result v1
    const/4 v2, -1
    if-ne v1, v2, :L1
    invoke-virtual { v0 }, Ljava/net/URL;->getDefaultPort()I
    move-result v0
  :L0
  .line 551
    return v0
  :L1
  .line 550
    invoke-virtual { v0 }, Ljava/net/URL;->getPort()I
    move-result v0
    goto :L0
.end method

.method private k()Ljava/net/URL;
  .registers 3
  .prologue
  .line 560
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;
    if-eqz v0, :L1
  .line 561
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;
  :L0
  .line 564
    return-object v0
  :L1
  .line 563
    new-instance v0, Ljava/net/URL;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;
  .line 564
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;
    goto :L0
.end method

.method private l()Lorg/apache/http/HttpHost;
  .registers 4
  .prologue
  .line 572
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    move-result-object v0
  .line 573
    if-eqz v0, :L0
  .line 574
    invoke-virtual { v0 }, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "127.0.0.1"
    invoke-static { v1, v2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
    invoke-virtual { v0 }, Lorg/apache/http/HttpHost;->getPort()I
    move-result v1
    const/16 v2, 8087
    if-ne v1, v2, :L0
  .line 575
    const/4 v0, 0
  :L0
  .line 578
    return-object v0
.end method

.method private m()Landroid/webkit/CookieManager;
  .registers 2
  .prologue
  .line 813
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;
    if-eqz v0, :L1
  .line 814
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;
  :L0
  .line 817
    return-object v0
  :L1
  .line 816
    invoke-static { }, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;
  .line 817
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;
    goto :L0
.end method

.method public call()Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
  .catch Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException; { :L0 .. :L1 } :L1
  .catch Ljava/net/URISyntaxException; { :L0 .. :L1 } :L9
  .catch Ljavax/net/ssl/SSLHandshakeException; { :L0 .. :L1 } :L18
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L0 .. :L1 } :L20
  .catch Ljavax/net/ssl/SSLException; { :L0 .. :L1 } :L22
  .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; { :L0 .. :L1 } :L24
  .catch Lorg/apache/http/conn/ConnectTimeoutException; { :L0 .. :L1 } :L26
  .catch Ljava/net/SocketTimeoutException; { :L0 .. :L1 } :L28
  .catch Lorg/apache/http/NoHttpResponseException; { :L0 .. :L1 } :L30
  .catch Lorg/apache/http/conn/HttpHostConnectException; { :L0 .. :L1 } :L32
  .catch Ljava/net/UnknownHostException; { :L0 .. :L1 } :L34
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L36
  .catch Ljava/lang/NullPointerException; { :L0 .. :L1 } :L38
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L40
  .catch Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException; { :L3 .. :L8 } :L1
  .catch Ljava/net/URISyntaxException; { :L3 .. :L8 } :L9
  .catch Ljavax/net/ssl/SSLHandshakeException; { :L3 .. :L8 } :L18
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L3 .. :L8 } :L20
  .catch Ljavax/net/ssl/SSLException; { :L3 .. :L8 } :L22
  .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; { :L3 .. :L8 } :L24
  .catch Lorg/apache/http/conn/ConnectTimeoutException; { :L3 .. :L8 } :L26
  .catch Ljava/net/SocketTimeoutException; { :L3 .. :L8 } :L28
  .catch Lorg/apache/http/NoHttpResponseException; { :L3 .. :L8 } :L30
  .catch Lorg/apache/http/conn/HttpHostConnectException; { :L3 .. :L8 } :L32
  .catch Ljava/net/UnknownHostException; { :L3 .. :L8 } :L34
  .catch Ljava/io/IOException; { :L3 .. :L8 } :L36
  .catch Ljava/lang/NullPointerException; { :L3 .. :L8 } :L38
  .catch Ljava/lang/Exception; { :L3 .. :L8 } :L40
  .catch Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException; { :L10 .. :L13 } :L1
  .catch Ljava/net/URISyntaxException; { :L10 .. :L13 } :L9
  .catch Ljavax/net/ssl/SSLHandshakeException; { :L10 .. :L13 } :L18
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L10 .. :L13 } :L20
  .catch Ljavax/net/ssl/SSLException; { :L10 .. :L13 } :L22
  .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; { :L10 .. :L13 } :L24
  .catch Lorg/apache/http/conn/ConnectTimeoutException; { :L10 .. :L13 } :L26
  .catch Ljava/net/SocketTimeoutException; { :L10 .. :L13 } :L28
  .catch Lorg/apache/http/NoHttpResponseException; { :L10 .. :L13 } :L30
  .catch Lorg/apache/http/conn/HttpHostConnectException; { :L10 .. :L13 } :L32
  .catch Ljava/net/UnknownHostException; { :L10 .. :L13 } :L34
  .catch Ljava/io/IOException; { :L10 .. :L13 } :L36
  .catch Ljava/lang/NullPointerException; { :L10 .. :L13 } :L38
  .catch Ljava/lang/Exception; { :L10 .. :L13 } :L40
  .catch Ljava/lang/Exception; { :L13 .. :L14 } :L16
  .catch Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException; { :L13 .. :L14 } :L1
  .catch Ljava/net/URISyntaxException; { :L13 .. :L14 } :L9
  .catch Ljavax/net/ssl/SSLHandshakeException; { :L13 .. :L14 } :L18
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L13 .. :L14 } :L20
  .catch Ljavax/net/ssl/SSLException; { :L13 .. :L14 } :L22
  .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; { :L13 .. :L14 } :L24
  .catch Lorg/apache/http/conn/ConnectTimeoutException; { :L13 .. :L14 } :L26
  .catch Ljava/net/SocketTimeoutException; { :L13 .. :L14 } :L28
  .catch Lorg/apache/http/NoHttpResponseException; { :L13 .. :L14 } :L30
  .catch Lorg/apache/http/conn/HttpHostConnectException; { :L13 .. :L14 } :L32
  .catch Ljava/net/UnknownHostException; { :L13 .. :L14 } :L34
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L36
  .catch Ljava/lang/NullPointerException; { :L13 .. :L14 } :L38
  .catch Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException; { :L14 .. :L17 } :L1
  .catch Ljava/net/URISyntaxException; { :L14 .. :L17 } :L9
  .catch Ljavax/net/ssl/SSLHandshakeException; { :L14 .. :L17 } :L18
  .catch Ljavax/net/ssl/SSLPeerUnverifiedException; { :L14 .. :L17 } :L20
  .catch Ljavax/net/ssl/SSLException; { :L14 .. :L17 } :L22
  .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; { :L14 .. :L17 } :L24
  .catch Lorg/apache/http/conn/ConnectTimeoutException; { :L14 .. :L17 } :L26
  .catch Ljava/net/SocketTimeoutException; { :L14 .. :L17 } :L28
  .catch Lorg/apache/http/NoHttpResponseException; { :L14 .. :L17 } :L30
  .catch Lorg/apache/http/conn/HttpHostConnectException; { :L14 .. :L17 } :L32
  .catch Ljava/net/UnknownHostException; { :L14 .. :L17 } :L34
  .catch Ljava/io/IOException; { :L14 .. :L17 } :L36
  .catch Ljava/lang/NullPointerException; { :L14 .. :L17 } :L38
  .catch Ljava/lang/Exception; { :L14 .. :L17 } :L40
  .registers 14
  .prologue
    const/4 v12, 1
    const/4 v11, 0
    const/4 v10, 6
    const/4 v9, 3
    const/4 v8, 2
  :L0
  .line 258
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;
    invoke-static { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z
    move-result v2
    if-nez v2, :L3
  .line 259
    new-instance v2, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    const/4 v3, 1
  .line 260
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    const-string v4, "The network is not available"
    invoke-direct { v2, v3, v4 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v2
  :L1
  .line 336
    move-exception v2
  .line 337
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 338
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L2
  .line 339
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getCode()I
    move-result v5
    invoke-virtual { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v3, v4, v5, v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L2
  .line 341
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 342
    throw v2
  :L3
  .line 265
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v2
    if-eqz v2, :L4
  .line 266
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-interface { v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onPreExecute(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;)V
  :L4
  .line 270
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->h()V
  .line 274
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;
    const-string v3, "http.cookie-store"
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;
    invoke-interface { v2, v3, v4 }, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
  .line 279
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v2
    sget-object v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;
    invoke-virtual { v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
  .line 281
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
  .line 284
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->d()Lorg/apache/http/HttpResponse;
    move-result-object v4
  .line 286
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
  .line 287
    iget-object v5, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    sub-long v2, v6, v2
    invoke-virtual { v5, v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->addConnectTime(J)V
  .line 291
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;
    invoke-interface { v2 }, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;
    move-result-object v2
  .line 292
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->isResetCookie()Z
    move-result v3
    if-eqz v3, :L5
  .line 293
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;
    move-result-object v3
    invoke-virtual { v3 }, Landroid/webkit/CookieManager;->removeAllCookie()V
  :L5
  .line 295
    invoke-interface { v2 }, Ljava/util/List;->isEmpty()Z
    move-result v3
    if-nez v3, :L11
  .line 298
    invoke-interface { v2 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L6
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L11
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lorg/apache/http/cookie/Cookie;
  .line 299
    invoke-interface { v2 }, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :L6
  .line 303
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { v2 }, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-interface { v2 }, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, "; domain="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
  .line 304
    invoke-interface { v2 }, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
  .line 305
    invoke-interface { v2 }, Lorg/apache/http/cookie/Cookie;->isSecure()Z
    move-result v2
    if-eqz v2, :L10
    const-string v2, "; Secure"
  :L7
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 306
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;
    move-result-object v5
    iget-object v6, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6, v2 }, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
  .line 307
    invoke-static { }, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/webkit/CookieSyncManager;->sync()V
  :L8
    goto :L6
  :L9
  .line 343
    move-exception v2
  .line 344
    new-instance v3, Ljava/lang/RuntimeException;
    const-string v4, "Url parser error!"
    invoke-virtual { v2 }, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v3
  :L10
  .line 305
    const-string v2, ""
    goto :L7
  :L11
  .line 312
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { p0, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
    move-result-object v3
  .line 314
    const-wide/16 v4, -1
  .line 315
    if-eqz v3, :L12
    invoke-virtual { v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->getResData()[B
    move-result-object v2
    if-eqz v2, :L12
  .line 316
    invoke-virtual { v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->getResData()[B
    move-result-object v2
    array-length v2, v2
    int-to-long v4, v2
  :L12
  .line 319
    const-wide/16 v6, -1
    cmp-long v2, v4, v6
    if-nez v2, :L14
    instance-of v2, v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;
    if-eqz v2, :L14
  .line 320
    move-object v0, v3
    check-cast v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;
    move-object v2, v0
  :L13
  .line 322
    invoke-virtual { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->getHeader()Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
    move-result-object v2
    const-string v4, "Content-Length"
    invoke-virtual { v2, v4 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 323
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
  :L14
  .line 329
    iget-object v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v2
  .line 330
    if-eqz v2, :L15
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;
    move-result-object v4
    invoke-static { v4 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-nez v4, :L15
  .line 331
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v4, "#"
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L15
  .line 438
    return-object v3
  :L16
  .line 324
    move-exception v2
  .line 325
    const-string v2, "HttpWorker"
    const-string v4, "parse Content-Length error"
    invoke-static { v2, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L17
    goto :L14
  :L18
  .line 345
    move-exception v2
  .line 346
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 347
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L19
  .line 348
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v8, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L19
  .line 350
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 351
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 352
    invoke-static { v8 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L20
  .line 353
    move-exception v2
  .line 354
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 355
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L21
  .line 356
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v8, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L21
  .line 358
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 359
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 360
    invoke-static { v8 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L22
  .line 361
    move-exception v2
  .line 362
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 363
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L23
  .line 364
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v10, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L23
  .line 366
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 367
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 368
    invoke-static { v10 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L24
  .line 369
    move-exception v2
  .line 370
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 371
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L25
  .line 372
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v9, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L25
  .line 374
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 375
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 376
    invoke-static { v9 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L26
  .line 377
    move-exception v2
  .line 378
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 379
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L27
  .line 380
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v9, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L27
  .line 382
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 383
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 384
    invoke-static { v9 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L28
  .line 385
    move-exception v2
  .line 386
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 387
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L29
  .line 388
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const/4 v5, 4
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ""
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v3, v4, v5, v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L29
  .line 390
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 391
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    const/4 v4, 4
  .line 392
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L30
  .line 393
    move-exception v2
  .line 394
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 395
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L31
  .line 396
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const/4 v5, 5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ""
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v3, v4, v5, v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L31
  .line 398
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 399
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    const/4 v4, 5
  .line 400
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L32
  .line 401
    move-exception v2
  .line 402
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 403
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L33
  .line 404
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const/16 v5, 8
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ""
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v3, v4, v5, v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L33
  .line 406
    const-string v3, "HttpManager"
    const-string v4, ""
    invoke-static { v3, v4, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 407
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    const/16 v4, 8
  .line 408
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L34
  .line 409
    move-exception v2
  .line 412
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 413
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L35
  .line 414
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const/16 v5, 9
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v6, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ""
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface { v3, v4, v5, v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L35
  .line 416
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 417
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    const/16 v4, 9
  .line 418
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L36
  .line 419
    move-exception v2
  .line 422
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 423
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L37
  .line 424
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v10, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L37
  .line 426
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 427
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 428
    invoke-static { v10 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L38
  .line 430
    move-exception v2
  .line 434
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 436
    iget v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->i:I
    if-ge v3, v12, :L39
  .line 437
    iget v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->i:I
    add-int/lit8 v2, v2, 1
    iput v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->i:I
  .line 438
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
    move-result-object v3
    goto/16 :L15
  :L39
  .line 440
    const-string v3, "HttpManager"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 441
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 442
    invoke-static { v11 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
  :L40
  .line 444
    move-exception v2
  .line 445
    const-string v3, "HttpManager"
    const-string v4, ""
    invoke-static { v3, v4, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 446
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->b()V
  .line 447
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    if-eqz v3, :L41
  .line 448
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v3
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v4, v11, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;ILjava/lang/String;)V
  :L41
  .line 450
    new-instance v3, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
  .line 451
    invoke-static { v11 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v5, ""
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v3, v4, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
  .registers 2
  .prologue
  .line 54
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
    move-result-object v0
    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
  .registers 8
  .prologue
    const/4 v1, 0
  .line 685
    invoke-virtual { p0, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J
    move-result-wide v2
  .line 687
    invoke-interface { p2 }, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    move-result-object v0
    invoke-interface { v0 }, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
    move-result-object v0
  .line 690
    if-eqz v0, :L1
  .line 691
    invoke-interface { v0 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    move-result-object v1
  .line 692
    const-string v0, "charset"
    invoke-virtual { v1, v0 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 693
    const-string v4, "Content-Type"
    invoke-virtual { v1, v4 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  :L0
  .line 695
    invoke-virtual { p1, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->setContentType(Ljava/lang/String;)V
  .line 696
    invoke-virtual { p1, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->setCharset(Ljava/lang/String;)V
  .line 697
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-virtual { p1, v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->setCreateTime(J)V
  .line 698
    invoke-virtual { p1, v2, v3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->setPeriod(J)V
  .line 699
    return-void
  :L1
    move-object v0, v1
    goto :L0
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/HashMap",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 11
  .prologue
    const/4 v8, 1
    const/4 v2, 0
  .line 582
    new-instance v3, Ljava/util/HashMap;
    invoke-direct { v3 }, Ljava/util/HashMap;-><init>()V
  .line 583
    const-string v0, ";"
    invoke-virtual { p1, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
  .line 585
    array-length v5, v4
    move v1, v2
  :L0
    if-ge v1, v5, :L3
    aget-object v6, v4, v1
  .line 586
    const/16 v0, 61
    invoke-virtual { v6, v0 }, Ljava/lang/String;->indexOf(I)I
    move-result v0
    const/4 v7, -1
    if-ne v0, v7, :L2
  .line 587
    const/4 v0, 2
    new-array v0, v0, [Ljava/lang/String;
  .line 588
    const-string v7, "Content-Type"
    aput-object v7, v0, v2
  .line 589
    aput-object v6, v0, v8
  :L1
  .line 592
    aget-object v6, v0, v2
    aget-object v0, v0, v8
    invoke-virtual { v3, v6, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 585
    add-int/lit8 v0, v1, 1
    move v1, v0
    goto :L0
  :L2
  .line 591
    const-string v0, "="
    invoke-virtual { v6, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    goto :L1
  :L3
  .line 594
    return-object v3
.end method

.method protected getHeaders()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList",
      "<",
      "Lorg/apache/http/Header;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 217
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;
    move-result-object v0
    return-object v0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L1 } :L3
  .registers 7
  .prologue
  .line 708
    const-wide/16 v0, 0
  .line 709
    const-string v2, "Cache-Control"
    invoke-interface { p1, v2 }, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    move-result-object v2
  .line 710
    if-eqz v2, :L4
  .line 711
    invoke-interface { v2 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v2
    const-string v3, "="
    invoke-virtual { v2, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 712
    array-length v3, v2
    const/4 v4, 2
    if-lt v3, v4, :L4
  :L0
  .line 714
    invoke-virtual { p0, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->parserMaxage([Ljava/lang/String;)J
  :L1
    move-result-wide v0
  :L2
  .line 726
    return-wide v0
  :L3
  .line 715
    move-exception v2
  .line 716
    const-string v3, "HttpWorker"
    invoke-static { v3, v2 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  :L4
  .line 721
    const-string v2, "Expires"
    invoke-interface { p1, v2 }, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    move-result-object v2
  .line 722
    if-eqz v2, :L2
  .line 723
    invoke-interface { v2 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    move-result-wide v0
  .line 724
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    sub-long/2addr v0, v2
    goto :L2
.end method

.method protected getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
  .registers 4
  .prologue
  .line 192
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
    if-eqz v0, :L1
  .line 193
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
  :L0
  .line 208
    return-object v0
  :L1
  .line 196
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B
    move-result-object v0
  .line 197
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    const-string v2, "gzip"
    invoke-virtual { v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 198
    if-eqz v0, :L3
  .line 199
    const-string v2, "true"
    invoke-static { v1, v2 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L4
  .line 201
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
  :L2
  .line 205
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getContentType()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V
  :L3
  .line 208
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :L0
  :L4
  .line 203
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct { v1, v0 }, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    iput-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :L2
.end method

.method public getRequest()Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
  .registers 2
  .prologue
  .line 772
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    return-object v0
.end method

.method protected getUri()Ljava/net/URI;
  .registers 3
  .prologue
  .line 174
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;
    move-result-object v0
  .line 175
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mUrl:Ljava/lang/String;
    if-eqz v1, :L0
  .line 176
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mUrl:Ljava/lang/String;
  :L0
  .line 177
    if-nez v0, :L1
  .line 178
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "url should not be null"
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 179
    new-instance v1, Ljava/net/URI;
    invoke-direct { v1, v0 }, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    return-object v1
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
  .catchall { :L0 .. :L1 } :L7
  .catchall { :L1 .. :L2 } :L13
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L6
  .catch Ljava/io/IOException; { :L9 .. :L10 } :L11
  .registers 13
  .prologue
    const/4 v0, 0
    const/16 v6, 304
  .line 608
    const-string v1, "HttpWorker"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "\u5f00\u59cbhandle\uff0chandleResponse-1,"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Thread;->getId()J
    move-result-wide v4
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 609
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    move-result-object v2
  .line 612
    if-eqz v2, :L12
  .line 613
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v1
    invoke-interface { v1 }, Lorg/apache/http/StatusLine;->getStatusCode()I
    move-result v1
    const/16 v3, 200
    if-ne v1, v3, :L12
  .line 614
    const-string v1, "HttpWorker"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
  .line 615
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/Thread;->getId()J
    move-result-wide v4
    invoke-virtual { v3, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
  .line 614
    invoke-static { v1, v3 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  :L0
  .line 618
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  :L1
  .line 620
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
  .line 622
    const-wide/16 v6, 0
    invoke-virtual { p0, v2, v6, v7, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
  .line 623
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v2
  .line 624
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->k:Z
  .line 625
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    sub-long v4, v6, v4
    invoke-virtual { v0, v4, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->addSocketTime(J)V
  .line 626
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;
    array-length v3, v2
    int-to-long v4, v3
    invoke-virtual { v0, v4, v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpManager;->addDataSize(J)V
  .line 627
    const-string v0, "HttpWorker"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "res:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    array-length v4, v2
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v0, v3 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 629
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;
    invoke-virtual { p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
    move-result-object v3
    invoke-direct { v0, v3, p2, p3, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
  .line 631
    invoke-virtual { p0, v0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->fillResponse(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
  :L2
  .line 636
    if-eqz v1, :L4
  :L3
  .line 638
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L4
  .line 644
    const-string v1, "HttpWorker"
    const-string v2, "finally,handleResponse"
    invoke-static { v1, v2 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  :L5
  .line 655
    return-object v0
  :L6
  .line 639
    move-exception v0
  .line 640
    new-instance v1, Ljava/lang/RuntimeException;
    const-string v2, "ArrayOutputStream close error!"
    invoke-virtual { v0 }, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    invoke-direct { v1, v2, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L7
  .line 636
    move-exception v1
    move-object v8, v1
    move-object v1, v0
    move-object v0, v8
  :L8
    if-eqz v1, :L10
  :L9
  .line 638
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L10
  .line 644
    const-string v1, "HttpWorker"
    const-string v2, "finally,handleResponse"
    invoke-static { v1, v2 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    throw v0
  :L11
  .line 639
    move-exception v0
  .line 640
    new-instance v1, Ljava/lang/RuntimeException;
    const-string v2, "ArrayOutputStream close error!"
    invoke-virtual { v0 }, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    invoke-direct { v1, v2, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
  :L12
  .line 646
    if-nez v2, :L5
  .line 647
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v1
    invoke-interface { v1 }, Lorg/apache/http/StatusLine;->getStatusCode()I
    move-result v1
    if-ne v1, v6, :L5
  .line 649
    if-ne p2, v6, :L5
    goto :L5
  :L13
  .line 636
    move-exception v0
    goto :L8
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
  .registers 8
  .prologue
  .line 667
    new-instance v1, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
    invoke-direct { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;-><init>()V
  .line 669
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
    move-result-object v2
    array-length v3, v2
    const/4 v0, 0
  :L0
    if-ge v0, v3, :L1
    aget-object v4, v2, v0
  .line 670
    invoke-interface { v4 }, Lorg/apache/http/Header;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v1, v5, v4 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V
  .line 669
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 675
    return-object v1
.end method

.method protected parserMaxage([Ljava/lang/String;)J
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L4
  .registers 5
  .prologue
  .line 736
    const/4 v0, 0
  :L0
    array-length v1, p1
    if-ge v0, v1, :L6
  .line 737
    aget-object v1, p1, v0
  .line 738
    const-string v2, "max-age"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L5
    add-int/lit8 v1, v0, 1
    aget-object v1, p1, v1
    if-eqz v1, :L5
  .line 740
    add-int/lit8 v1, v0, 1
  :L1
    aget-object v1, p1, v1
    invoke-static { v1 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
  :L2
    move-result-wide v0
  :L3
  .line 744
    return-wide v0
  :L4
  .line 741
    move-exception v1
  :L5
  .line 736
    add-int/lit8 v0, v0, 1
    goto :L0
  :L6
  .line 744
    const-wide/16 v0, 0
    goto :L3
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
  .registers 6
  .prologue
  .line 835
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v0
    invoke-interface { v0 }, Lorg/apache/http/StatusLine;->getStatusCode()I
    move-result v0
  .line 836
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v1
    invoke-interface { v1 }, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
    move-result-object v1
  .line 841
    const/16 v2, 200
    if-eq v0, v2, :L0
    invoke-virtual { p0, v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z
    move-result v2
    if-nez v2, :L0
  .line 842
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v1
    invoke-interface { v1 }, Lorg/apache/http/StatusLine;->getStatusCode()I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
  .line 843
    invoke-interface { p1 }, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    move-result-object v2
    invoke-interface { v2 }, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v0
  :L0
  .line 852
    invoke-virtual { p0, p1, v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
    move-result-object v0
    return-object v0
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
  .registers 4
  .prologue
  .line 758
    const/16 v0, 304
    if-ne p1, v0, :L1
  .line 759
    const/4 v0, 1
  :L0
  .line 761
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L4
  .catchall { :L1 .. :L3 } :L6
  .catchall { :L5 .. :L6 } :L6
  .catch Ljava/lang/Exception; { :L7 .. :L8 } :L4
  .catchall { :L7 .. :L8 } :L6
  .registers 15
  .prologue
  .line 785
    if-nez p4, :L0
  .line 786
    invoke-interface { p1 }, Lorg/apache/http/HttpEntity;->consumeContent()V
  .line 787
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Output stream may not be null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 790
    invoke-static { p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    move-result-object v1
  .line 791
    invoke-interface { p1 }, Lorg/apache/http/HttpEntity;->getContentLength()J
    move-result-wide v2
  .line 795
    const/16 v0, 2048
  :L1
    new-array v0, v0, [B
  :L2
  .line 796
    invoke-virtual { v1, v0 }, Ljava/io/InputStream;->read([B)I
    move-result v4
    const/4 v5, -1
    if-eq v4, v5, :L7
    iget-object v5, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    invoke-virtual { v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;->isCanceled()Z
    move-result v5
    if-nez v5, :L7
  .line 797
    const/4 v5, 0
    invoke-virtual { p4, v0, v5, v4 }, Ljava/io/OutputStream;->write([BII)V
  .line 798
    int-to-long v4, v4
    add-long/2addr p2, v4
  .line 799
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v4
    if-eqz v4, :L2
    const-wide/16 v4, 0
    cmp-long v4, v2, v4
    if-lez v4, :L2
  .line 800
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;
    move-result-object v4
    iget-object v5, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlRequest;
    long-to-double v6, p2
    long-to-double v8, v2
    div-double/2addr v6, v8
    invoke-interface { v4, v5, v6, v7 }, Lcom/alipay/zoloz/android/phone/mrpc/core/TransportCallback;->onProgressUpdate(Lcom/alipay/zoloz/android/phone/mrpc/core/Request;D)V
  :L3
    goto :L2
  :L4
  .line 804
    move-exception v0
  :L5
  .line 805
    const-string v2, "HttpWorker"
    invoke-virtual { v0 }, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
    move-result-object v3
    invoke-static { v2, v3 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 806
    new-instance v2, Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "HttpWorker Request Error!"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v0 }, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v2, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v2
  :L6
  .line 808
    move-exception v0
    invoke-static { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V
    throw v0
  :L7
  .line 803
    invoke-virtual { p4 }, Ljava/io/OutputStream;->flush()V
  :L8
  .line 808
    invoke-static { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V
  .line 810
    return-void
.end method

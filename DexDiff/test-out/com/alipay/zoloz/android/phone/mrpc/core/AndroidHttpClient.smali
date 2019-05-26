.class public final Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
.super Ljava/lang/Object;
.implements Lorg/apache/http/client/HttpClient;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$CurlLogger;,
    Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
  }
.end annotation

.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J

.field private static a:[Ljava/lang/String;

.field private final static b:Lorg/apache/http/HttpRequestInterceptor;

.field private final c:Lorg/apache/http/client/HttpClient;

.field private d:Ljava/lang/RuntimeException;

.field private volatile e:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;

.method static constructor <clinit>()V
  .registers 3
  .prologue
  .line 76
    const-wide/16 v0, 160
    sput-wide v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J
  .line 88
    const/4 v0, 3
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "text/"
    aput-object v2, v0, v1
    const/4 v1, 1
    const-string v2, "application/xml"
    aput-object v2, v0, v1
    const/4 v1, 2
    const-string v2, "application/json"
    aput-object v2, v0, v1
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a:[Ljava/lang/String;
  .line 95
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;
    invoke-direct { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
  .registers 5
  .prologue
  .line 180
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 177
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "AndroidHttpClient created and never closed"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;
  .line 181
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;
    invoke-direct { v0, p0, p1, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$2;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
  .line 239
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
  .registers 10
  .prologue
    const/4 v2, 0
  .line 476
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
  .line 478
    const-string v0, "curl "
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 480
    invoke-interface { p0 }, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;
    move-result-object v1
    array-length v4, v1
    move v0, v2
  :L0
    if-ge v0, v4, :L3
    aget-object v5, v1, v0
  .line 481
    if-nez p1, :L2
  .line 482
    invoke-interface { v5 }, Lorg/apache/http/Header;->getName()Ljava/lang/String;
    move-result-object v6
    const-string v7, "Authorization"
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :L1
    invoke-interface { v5 }, Lorg/apache/http/Header;->getName()Ljava/lang/String;
    move-result-object v6
    const-string v7, "Cookie"
  .line 483
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L2
  :L1
  .line 480
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 486
    const-string v6, "--header \""
    invoke-virtual { v3, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 487
    invoke-virtual { v5 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 488
    const-string v5, "\" "
    invoke-virtual { v3, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L1
  :L3
  .line 491
    invoke-interface { p0 }, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
    move-result-object v1
  .line 496
    instance-of v0, p0, Lorg/apache/http/impl/client/RequestWrapper;
    if-eqz v0, :L8
    move-object v0, p0
  .line 497
    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual { v0 }, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;
    move-result-object v0
  .line 498
    instance-of v4, v0, Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz v4, :L8
  .line 499
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface { v0 }, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
    move-result-object v0
  :L4
  .line 503
    const-string v1, "\""
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 504
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  .line 505
    const-string v0, "\""
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 507
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;
    if-eqz v0, :L5
    move-object v0, p0
  .line 508
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;
  .line 509
    invoke-interface { v0 }, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;
    move-result-object v0
  .line 510
    if-eqz v0, :L5
    invoke-interface { v0 }, Lorg/apache/http/HttpEntity;->isRepeatable()Z
    move-result v1
    if-eqz v1, :L5
  .line 511
    invoke-interface { v0 }, Lorg/apache/http/HttpEntity;->getContentLength()J
    move-result-wide v4
    const-wide/16 v6, 1024
    cmp-long v1, v4, v6
    if-gez v1, :L7
  .line 512
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 513
    invoke-interface { v0, v1 }, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
  .line 515
    invoke-static { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    move-result v0
    if-eqz v0, :L6
  .line 516
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    const/4 v1, 2
    invoke-static { v0, v1 }, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    move-result-object v0
  .line 517
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "echo '"
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "' | base64 -d > /tmp/$$.bin; "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v2, v0 }, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
  .line 518
    const-string v0, " --data-binary @/tmp/$$.bin"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L5
  .line 529
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L6
  .line 520
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    move-result-object v0
  .line 521
    const-string v1, " --data-ascii \""
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L5
  :L7
  .line 524
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L5
  :L8
    move-object v0, v1
    goto/16 :L4
.end method

.method private static a(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
  .registers 8
  .prologue
    const/4 v4, 2
    const/4 v6, 1
    const/4 v5, 0
  .line 157
    const-string v1, "android.net.SSLCertificateSocketFactory"
    const-string v2, "getHttpSocketFactory"
    new-array v3, v4, [Ljava/lang/Class;
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v0, v3, v5
    const-class v0, Landroid/net/SSLSessionCache;
    aput-object v0, v3, v6
    new-array v4, v4, [Ljava/lang/Object;
    const/16 v0, 15000
  .line 160
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    aput-object v0, v4, v5
    if-nez p0, :L1
    const/4 v0, 0
  :L0
    aput-object v0, v4, v6
  .line 157
    invoke-static { v1, v2, v3, v4 }, Lcom/alipay/zoloz/mobile/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;
    return-object v0
  :L1
  .line 160
    new-instance v0, Landroid/net/SSLSessionCache;
    invoke-direct { v0, p0 }, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V
    goto :L0
.end method

.method private static a()V
  .registers 1
  .prologue
  .line 577
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    invoke-static { v0 }, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
  .line 578
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
  .registers 12
  .prologue
    const/4 v0, 1
    const/4 v1, 0
  .line 534
    const-string v2, "content-encoding"
    invoke-interface { p0, v2 }, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    move-result-object v3
  .line 535
    if-eqz v3, :L3
  .line 536
    array-length v4, v3
    move v2, v1
  :L0
    if-ge v2, v4, :L3
    aget-object v5, v3, v2
  .line 537
    const-string v6, "gzip"
    invoke-interface { v5 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v6, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L2
  :L1
  .line 553
    return v0
  :L2
  .line 536
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
  .line 543
    const-string v2, "content-type"
    invoke-interface { p0, v2 }, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    move-result-object v4
  .line 544
    if-eqz v4, :L1
  .line 545
    array-length v5, v4
    move v3, v1
  :L4
    if-ge v3, v5, :L1
    aget-object v6, v4, v3
  .line 546
    sget-object v7, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a:[Ljava/lang/String;
    array-length v8, v7
    move v2, v1
  :L5
    if-ge v2, v8, :L7
    aget-object v9, v7, v2
  .line 547
    invoke-interface { v6 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v10
    invoke-virtual { v10, v9 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v9
    if-eqz v9, :L6
    move v0, v1
  .line 548
    goto :L1
  :L6
  .line 546
    add-int/lit8 v2, v2, 1
    goto :L5
  :L7
  .line 545
    add-int/lit8 v2, v3, 1
    move v3, v2
    goto :L4
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
  .registers 1
  .prologue
  .line 73
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;
    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
  .registers 2
  .prologue
  .line 73
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
  .registers 3
  .prologue
  .line 73
    invoke-static { p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
  .registers 8
  .prologue
  .line 373
    const-string v0, "RPC_PERF"
    const-string v1, "gzip..."
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 375
    array-length v0, p0
    int-to-long v0, v0
    invoke-static { p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J
    move-result-wide v2
    cmp-long v0, v0, v2
    if-gez v0, :L1
  .line 376
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct { v0, p0 }, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
  :L0
  .line 386
    return-object v0
  :L1
  .line 378
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 379
    new-instance v0, Ljava/util/zip/GZIPOutputStream;
    invoke-direct { v0, v1 }, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
  .line 380
    invoke-virtual { v0, p0 }, Ljava/io/OutputStream;->write([B)V
  .line 381
    invoke-virtual { v0 }, Ljava/io/OutputStream;->close()V
  .line 382
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual { v1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v1
    invoke-direct { v0, v1 }, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
  .line 383
    const-string v1, "gzip"
    invoke-virtual { v0, v1 }, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V
  .line 384
    const-string v1, "RPC_PERF"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "gzip size:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    array-length v3, p0
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "->"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v0 }, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J
    move-result-wide v4
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    goto :L0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
  .registers 3
  .prologue
  .line 394
    sget-wide v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J
    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
  .registers 4
  .prologue
  .line 283
    invoke-interface { p0 }, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    move-result-object v1
  .line 284
    if-nez v1, :L1
  :L0
  .line 298
    return-object v1
  :L1
  .line 287
    invoke-interface { p0 }, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;
    move-result-object v0
  .line 288
    if-eqz v0, :L0
  .line 291
    invoke-interface { v0 }, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    move-result-object v0
  .line 292
    if-eqz v0, :L0
  .line 295
    const-string v2, "gzip"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L3
  .line 296
    new-instance v0, Ljava/util/zip/GZIPInputStream;
    invoke-direct { v0, v1 }, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
  :L2
    move-object v1, v0
  .line 298
    goto :L0
  :L3
    move-object v0, v1
    goto :L2
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
  .registers 3
  .prologue
  .line 250
    const-string v0, "Accept-Encoding"
    const-string v1, "gzip"
    invoke-interface { p0, v0, v1 }, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
  .line 251
    return-void
.end method

.method public static modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V
  .registers 3
  .prologue
  .line 269
    const-string v0, "Connection"
    const-string v1, "Keep-Alive"
    invoke-interface { p0, v0, v1 }, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
  .line 270
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .registers 2
  .prologue
  .line 172
    const/4 v0, 0
    invoke-static { p0, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    move-result-object v0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
  .registers 8
  .prologue
    const/4 v3, 1
    const/4 v2, 0
  .line 116
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;
    invoke-direct { v0 }, Lorg/apache/http/params/BasicHttpParams;-><init>()V
  .line 117
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
    invoke-static { v0, v1 }, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
  .line 118
    invoke-static { v0, v2 }, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
  .line 121
    invoke-static { v0, v3 }, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
  .line 123
    const/16 v1, 5000
    invoke-static { v0, v1 }, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
  .line 124
    const/16 v1, 15000
    invoke-static { v0, v1 }, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
  .line 125
    const/16 v1, 8192
    invoke-static { v0, v1 }, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V
  .line 129
    invoke-static { v0, v3 }, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V
  .line 130
    invoke-static { v0, v2 }, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V
  .line 133
    invoke-static { v0, p0 }, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
  .line 134
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-direct { v1 }, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
  .line 135
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
    const-string v3, "http"
    invoke-static { }, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    move-result-object v4
    const/16 v5, 80
    invoke-direct { v2, v3, v4, v5 }, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    invoke-virtual { v1, v2 }, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
  .line 139
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
    const-string v3, "https"
    invoke-static { p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    move-result-object v4
    const/16 v5, 443
    invoke-direct { v2, v3, v4, v5 }, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    invoke-virtual { v1, v2 }, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
  .line 141
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    invoke-direct { v2, v0, v1 }, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
  .line 142
    const-wide/32 v4, 60000
    invoke-static { v0, v4, v5 }, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V
  .line 143
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;
    const/16 v3, 10
    invoke-direct { v1, v3 }, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V
    invoke-static { v0, v1 }, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
  .line 144
    const/16 v1, 50
    invoke-static { v0, v1 }, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
  .line 147
    const-string v1, "networkaddress.cache.ttl"
    const/4 v3, -1
    invoke-static { v3 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    invoke-static { v1, v3 }, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
  .line 150
    invoke-static { }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->a()V
  .line 153
    new-instance v1, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
    invoke-direct { v1, v2, v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    return-object v1
.end method

.method public static parseDate(Ljava/lang/String;)J
  .registers 3
  .prologue
  .line 572
    invoke-static { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpDateTime;->parse(Ljava/lang/String;)J
    move-result-wide v0
    return-wide v0
.end method

.method public close()V
  .registers 2
  .prologue
  .line 306
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;
    if-eqz v0, :L0
  .line 307
    invoke-virtual { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    move-result-object v0
    invoke-interface { v0 }, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
  .line 308
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->d:Ljava/lang/RuntimeException;
  :L0
  .line 310
    return-void
.end method

.method public disableCurlLogging()V
  .registers 2
  .prologue
  .line 454
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
  .line 455
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
  .registers 5
  .prologue
  .line 439
    if-nez p1, :L0
  .line 440
    new-instance v0, Ljava/lang/NullPointerException;
    const-string v1, "name"
    invoke-direct { v0, v1 }, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 442
    const/4 v0, 2
    if-lt p2, v0, :L1
    const/4 v0, 7
    if-le p2, v0, :L2
  :L1
  .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Level is out of range [2..7]"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 447
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
    const/4 v1, 0
    invoke-direct { v0, p1, p2, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;)V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->e:Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
  .line 448
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Lorg/apache/http/HttpHost;",
      "Lorg/apache/http/HttpRequest;",
      "Lorg/apache/http/client/ResponseHandler",
      "<+TT;>;)TT;"
    }
  .end annotation
  .registers 5
  .prologue
  .line 351
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2, p3 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Lorg/apache/http/HttpHost;",
      "Lorg/apache/http/HttpRequest;",
      "Lorg/apache/http/client/ResponseHandler",
      "<+TT;>;",
      "Lorg/apache/http/protocol/HttpContext;",
      ")TT;"
    }
  .end annotation
  .registers 6
  .prologue
  .line 358
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2, p3, p4 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Lorg/apache/http/client/methods/HttpUriRequest;",
      "Lorg/apache/http/client/ResponseHandler",
      "<+TT;>;)TT;"
    }
  .end annotation
  .registers 4
  .prologue
  .line 340
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Lorg/apache/http/client/methods/HttpUriRequest;",
      "Lorg/apache/http/client/ResponseHandler",
      "<+TT;>;",
      "Lorg/apache/http/protocol/HttpContext;",
      ")TT;"
    }
  .end annotation
  .registers 5
  .prologue
  .line 345
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2, p3 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
  .registers 4
  .prologue
  .line 329
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
  .registers 5
  .prologue
  .line 334
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2, p3 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
  .registers 3
  .prologue
  .line 321
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    move-result-object v0
    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
  .registers 4
  .prologue
  .line 325
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0, p1, p2 }, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    move-result-object v0
    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
  .registers 2
  .prologue
  .line 317
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0 }, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    move-result-object v0
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
  .registers 2
  .prologue
  .line 313
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    invoke-interface { v0 }, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
    move-result-object v0
    return-object v0
.end method

.method public setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
  .registers 3
  .prologue
  .line 259
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;
    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;
  .line 260
    invoke-virtual { v0, p1 }, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
  .line 261
    return-void
.end method

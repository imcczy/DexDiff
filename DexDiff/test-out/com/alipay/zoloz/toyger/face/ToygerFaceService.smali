.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
.super Lcom/alipay/zoloz/toyger/ToygerService;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lcom/alipay/zoloz/toyger/ToygerService",
    "<",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceState;",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;",
    ">;"
  }
.end annotation

.field public final static KEY_TOYGER_DEPTH_FRAME:Ljava/lang/String; = "toyger_depth_frame"

.field public final static KEY_TOYGER_FRAME:Ljava/lang/String; = "toyger_frame"

.field private final static QUEUE_LENGTH:I = 1

.field private static licenses:Ljava/lang/String;

.field private static model:[B

.field private blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;

.field private isMirror:Z

.field private final mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mDepthFrameQueue:Ljava/util/concurrent/BlockingQueue;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/BlockingQueue",
      "<",
      "Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;",
      ">;"
    }
  .end annotation
.end field

.field private final mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mFrameProcessor:Lcom/alipay/zoloz/toyger/face/FrameProcessor;

.field private final mFrameQueue:Ljava/util/concurrent/BlockingQueue;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/concurrent/BlockingQueue",
      "<",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
      ">;>;"
    }
  .end annotation
.end field

.field private mProcessThread:Landroid/os/HandlerThread;

.field private mProcessThreadHandler:Landroid/os/Handler;

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 55
    const/4 v0, 0
    sput-object v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .prologue
    const/4 v2, 1
    const/4 v1, 0
  .line 41
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/ToygerService;-><init>()V
  .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-direct { v0, v2 }, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;
  .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-direct { v0, v2 }, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueue:Ljava/util/concurrent/BlockingQueue;
  .line 65
    new-instance v0, Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameProcessor:Lcom/alipay/zoloz/toyger/face/FrameProcessor;
  .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
  .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct { v0 }, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
  .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct { v0 }, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
  .line 73
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->isMirror:Z
    return-void
.end method

.method static synthetic access$000()[B
  .registers 1
  .prologue
  .line 41
    sget-object v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    return-object v0
.end method

.method static synthetic access$002([B)[B
  .registers 1
  .prologue
  .line 41
    sput-object p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
  .registers 1
  .prologue
  .line 41
    sget-object v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->licenses:Ljava/lang/String;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Lcom/alipay/zoloz/toyger/face/FrameProcessor;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameProcessor:Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/BlockingQueue;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueue:Ljava/util/concurrent/BlockingQueue;
    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Ljava/util/concurrent/locks/ReentrantLock;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)Z
  .registers 2
  .prologue
  .line 41
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->isMirror:Z
    return v0
.end method

.method static synthetic access$800([BII)[B
  .registers 4
  .prologue
  .line 41
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mirrorYUV420([BII)[B
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$900([SII)[S
  .registers 4
  .prologue
  .line 41
    invoke-static { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mirrorDepth([SII)[S
    move-result-object v0
    return-object v0
.end method

.method private static load(Landroid/content/Context;)Z
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L3
  .registers 4
  .prologue
    const/4 v0, 0
  :L0
  .line 78
    invoke-virtual { p0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v1
    const-string v2, "toyger.dat"
    invoke-virtual { v1, v2 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v1
  .line 79
    invoke-virtual { v1 }, Ljava/io/InputStream;->available()I
    move-result v2
    new-array v2, v2, [B
    sput-object v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
  .line 80
    sget-object v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    invoke-virtual { v1, v2 }, Ljava/io/InputStream;->read([B)I
  :L1
  .line 86
    sget-object v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    if-nez v1, :L4
  .line 87
    const-string v1, "TOYGER"
    const-string v2, "fail to read model file"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L2
  .line 104
    return v0
  :L3
  .line 81
    move-exception v1
  .line 82
    const-string v2, "TOYGER"
    invoke-static { v2, v1 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L2
  :L4
  .line 104
    const/4 v0, 1
    goto :L2
.end method

.method private static mirrorDepth([SII)[S
  .registers 8
  .prologue
    const/4 v0, 0
  .line 458
    mul-int v1, p1, p2
    new-array v3, v1, [S
    move v2, v0
    move v1, v0
  :L0
  .line 460
    if-ge v2, p2, :L3
  .line 461
    add-int/lit8 v0, p1, -1
  :L1
    if-ltz v0, :L2
  .line 462
    mul-int v4, v2, p1
    add-int/2addr v4, v0
    aget-short v4, p0, v4
    aput-short v4, v3, v1
  .line 463
    add-int/lit8 v1, v1, 1
  .line 461
    add-int/lit8 v0, v0, -1
    goto :L1
  :L2
  .line 460
    add-int/lit8 v0, v2, 1
    move v2, v0
    goto :L0
  :L3
  .line 466
    return-object v3
.end method

.method private static mirrorYUV420([BII)[B
  .registers 9
  .prologue
    const/4 v0, 0
  .line 437
    mul-int v1, p1, p2
    mul-int/lit8 v1, v1, 3
    div-int/lit8 v1, v1, 2
    new-array v4, v1, [B
    move v2, v0
  :L0
  .line 439
    if-ge v2, p2, :L3
  .line 440
    add-int/lit8 v1, p1, -1
    move v5, v1
    move v1, v0
    move v0, v5
  :L1
    if-ltz v0, :L2
  .line 441
    mul-int v3, v2, p1
    add-int/2addr v3, v0
    aget-byte v3, p0, v3
    aput-byte v3, v4, v1
  .line 442
    add-int/lit8 v1, v1, 1
  .line 440
    add-int/lit8 v0, v0, -1
    goto :L1
  :L2
  .line 439
    add-int/lit8 v0, v2, 1
    move v2, v0
    move v0, v1
    goto :L0
  :L3
    move v1, v0
    move v0, p2
  :L4
  .line 446
    mul-int/lit8 v2, p2, 3
    div-int/lit8 v2, v2, 2
    if-ge v0, v2, :L7
  .line 447
    add-int/lit8 v2, p1, -2
  :L5
    if-ltz v2, :L6
  .line 448
    mul-int v3, v0, p1
    add-int/2addr v3, v2
    aget-byte v3, p0, v3
    aput-byte v3, v4, v1
  .line 449
    add-int/lit8 v1, v1, 1
  .line 450
    mul-int v3, v0, p1
    add-int/2addr v3, v2
    add-int/lit8 v3, v3, 1
    aget-byte v3, p0, v3
    aput-byte v3, v4, v1
  .line 451
    add-int/lit8 v3, v1, 1
  .line 447
    add-int/lit8 v1, v2, -2
    move v2, v1
    move v1, v3
    goto :L5
  :L6
  .line 446
    add-int/lit8 v0, v0, 1
    goto :L4
  :L7
  .line 454
    return-object v4
.end method

.method public static preLoad(Landroid/content/Context;)Z
  .registers 5
  .prologue
  .line 109
    sget-object v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    if-eqz v0, :L1
  .line 110
    const-string v0, "TOYGER"
    const-string v1, "ToygerFaceService.preLoad(): model is already loaded"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 111
    const/4 v0, 1
  :L0
  .line 115
    return v0
  :L1
  .line 113
    invoke-static { p0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->load(Landroid/content/Context;)Z
    move-result v0
  .line 114
    const-string v1, "TOYGER"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ToygerFaceService.preLoad() : bRet="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    goto :L0
.end method

.method public addMonitorImage(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
  .registers 3
  .prologue
  .line 422
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v0, p1 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->addMonitorImage(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
  .line 423
    return-void
.end method

.method public generateMonitorBlob()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .registers 5
  .prologue
  .line 426
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->getMonitorBlob()[B
    move-result-object v0
  .line 427
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->getKey()[B
    move-result-object v1
  .line 428
    new-instance v2, Ljava/util/HashMap;
    invoke-direct { v2 }, Ljava/util/HashMap;-><init>()V
  .line 429
    const-string v3, "content"
    invoke-interface { v2, v3, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 430
    const-string v0, "key"
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 431
    const-string v0, "isUTF8"
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->isUTF8()Z
    move-result v1
    invoke-static { v1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 432
    return-object v2
.end method

.method public handleCaptureCompleted(ILjava/util/List;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
      ">;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)V"
    }
  .end annotation
  .registers 8
  .prologue
  .line 414
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "handleCaptureCompleted(): result="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", infos="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", extIno="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 416
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v0, p2, p3 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    move-result-object v1
  .line 417
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->getKey()[B
    move-result-object v2
  .line 418
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    invoke-virtual { v3 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->isUTF8()Z
    move-result v3
    invoke-interface { v0, p1, v1, v2, v3 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;->onComplete(I[B[BZ)Z
  .line 419
    return-void
.end method

.method public bridge synthetic handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  .registers 3
  .prologue
  .line 41
    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
    return-void
.end method

.method public handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
  .registers 7
  .prologue
  .line 389
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "handleInfoReady(): frame="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", attr="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 391
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    iget v3, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 394
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 401
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->reverseBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 409
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    invoke-interface { v0, v1, p2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;->onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/ToygerAttr;)Z
  .line 410
    return-void
.end method

.method public bridge synthetic handleStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  .registers 3
  .prologue
  .line 41
    check-cast p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;
    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->handleStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
    return-void
.end method

.method public handleStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
  .registers 6
  .prologue
  .line 378
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "handleStateUpdated(): state="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", attr="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 381
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 382
    const-string v0, "toyger_frame"
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameProcessor:Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->getTgFrame()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    move-result-object v2
    invoke-virtual { v1, v0, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 383
    const-string v0, "toyger_depth_frame"
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameProcessor:Lcom/alipay/zoloz/toyger/face/FrameProcessor;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/face/FrameProcessor;->getTgDepthFrame()Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    move-result-object v2
    invoke-virtual { v1, v0, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 384
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    invoke-interface { v0, p1, p2, v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;->onStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;Ljava/util/Map;)Z
  .line 385
    return-void
.end method

.method public bridge synthetic init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/ToygerCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
  .registers 12
  .prologue
  .line 41
    move-object v2, p2
    check-cast v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
    move-object v0, p0
    move-object v1, p1
    move-object v3, p3
    move-object v4, p4
    move-object v5, p5
    invoke-virtual/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    move-result v0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
  .catch Ljava/lang/Throwable; { :L8 .. :L9 } :L14
  .registers 14
  .prologue
    const/4 v6, 1
    const/4 v3, 0
  .line 120
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
  .line 122
    sget-object v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->model:[B
    if-nez v0, :L0
  .line 123
    invoke-static { p1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->load(Landroid/content/Context;)Z
  :L0
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    if-nez v0, :L1
  .line 128
    new-instance v0, Landroid/os/HandlerThread;
    const-string v1, "ToygerProcessQueue"
    invoke-direct { v0, v1 }, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
  .line 129
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->start()V
  :L1
  .line 131
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    if-nez v0, :L2
  .line 132
    new-instance v0, Landroid/os/Handler;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    invoke-virtual { v1 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
  :L2
  .line 136
    const/4 v0, 0
  .line 137
    if-eqz p5, :L3
    const-string v1, "pubkey"
    invoke-interface { p5, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
  .line 138
    const-string v0, "pubkey"
    invoke-interface { p5, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
  :L3
  .line 140
    invoke-static { p4, v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
    move-result-object v5
  .line 141
    if-nez v5, :L5
  .line 142
    const-string v0, "TOYGER"
    const-string v1, "fail to parse upload config"
    invoke-static { v0, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L4
  .line 237
    return v3
  :L5
  .line 146
    if-eqz p5, :L6
    const-string v0, "is_mirror"
    invoke-interface { p5, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 147
    const-string v0, "is_mirror"
    invoke-interface { p5, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    move-result v0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->isMirror:Z
  :L6
  .line 150
    const/4 v0, 2
  .line 151
    if-eqz p5, :L7
    const-string v1, "meta_serializer"
    invoke-interface { p5, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
  .line 152
    const-string v0, "meta_serializer"
    invoke-interface { p5, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  :L7
  .line 155
    packed-switch v0, :L22
  .line 161
    const-string v0, "com.alipay.zoloz.toyger.face.FaceBlobManagerJson"
  :L8
  .line 166
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
  .line 167
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Class;
    const/4 v2, 0
    const-class v4, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
    aput-object v4, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
  .line 168
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  .line 169
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object v5, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->blobManager:Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
  :L9
  .line 176
    invoke-static { p3 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->from(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
    move-result-object v0
  .line 177
    if-nez v0, :L21
  .line 178
    const-string v0, "TOYGER"
    const-string v1, "fail to parse algorithm config, load default config"
    invoke-static { v0, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 179
    new-instance v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;-><init>()V
    move-object v1, v0
  :L10
  .line 183
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->toToygerConfig()Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
    move-result-object v4
  .line 186
    const-string v0, ""
  .line 187
    iget-object v2, v5, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    if-eqz v2, :L16
    move v2, v3
  :L11
  .line 188
    iget-object v7, v5, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    invoke-interface { v7 }, Ljava/util/List;->size()I
    move-result v7
    if-ge v2, v7, :L16
  .line 189
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v7
    if-lez v7, :L15
  .line 190
    const-string v7, "#"
    invoke-virtual { v0, v7 }, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
  .line 191
    iget-object v0, v5, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-virtual { v7, v0 }, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  :L12
  .line 188
    add-int/lit8 v2, v2, 1
    goto :L11
  :L13
  .line 157
    const-string v0, "com.alipay.zoloz.toyger.face.FaceBlobManagerPb"
    goto :L8
  :L14
  .line 170
    move-exception v0
  .line 171
    const-string v1, "TOYGER"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto/16 :L4
  :L15
  .line 193
    iget-object v0, v5, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    invoke-interface { v0, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    goto :L12
  :L16
  .line 198
    iget-object v2, v4, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->collection:Ljava/lang/String;
  .line 200
    const-string v0, ""
  :L17
  .line 201
    iget-object v2, v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combination:Ljava/util/List;
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v3, v2, :L20
  .line 202
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v2
    if-lez v2, :L19
  .line 203
    const-string v2, "#"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 204
    iget-object v0, v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combination:Ljava/util/List;
    invoke-interface { v0, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  :L18
  .line 201
    add-int/lit8 v3, v3, 1
    goto :L17
  :L19
  .line 206
    iget-object v0, v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combination:Ljava/util/List;
    invoke-interface { v0, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    goto :L18
  :L20
  .line 210
    iget-object v1, v4, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
    iput-object v0, v1, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->livenessCombinations:Ljava/lang/String;
  .line 211
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "toygerConfig="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 215
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    check-cast v5, Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
  .line 216
    iget-object v7, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    new-instance v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;
    move-object v1, p0
    move-object v2, p1
    move-object v3, p0
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$1;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Landroid/content/Context;Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;)V
    invoke-virtual { v7, v0 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    move v3, v6
  .line 237
    goto/16 :L4
  :L21
    move-object v1, v0
    goto/16 :L10
  .line 155
  :L22
  .packed-switch 2
    :L13
  .end packed-switch
.end method

.method public processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
      ">;",
      "Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;",
      ")Z"
    }
  .end annotation
  .registers 6
  .prologue
  .line 243
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 244
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-interface { v0, v1 }, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 245
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 246
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L0
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 247
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->deepCopy()Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    move-result-object v0
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
  .line 249
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  :L2
  .line 251
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;-><init>()V
  .line 252
    if-eqz p2, :L4
    iget-object v1, p2, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    if-nez v1, :L3
    iget-object v1, p2, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
    if-eqz v1, :L4
  :L3
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-interface { v1, v0 }, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
  .line 253
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v1 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 254
    invoke-virtual { v0, p2 }, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->assign(Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .line 255
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  :L4
  .line 259
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    if-nez v0, :L6
  .line 260
    const-string v0, "TOYGER"
    const-string v1, "ToygerFaceService.processImage(), processThreadHandler is null, return false"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 261
    const/4 v0, 0
  :L5
  .line 301
    return v0
  :L6
  .line 263
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$2;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 301
    const/4 v0, 1
    goto :L5
.end method

.method public release()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L4 } :L5
  .registers 5
  .prologue
  .line 344
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 345
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->reset()V
  .line 346
    new-instance v0, Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
  .line 347
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;
    invoke-direct { v2, p0, v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$4;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Ljava/util/concurrent/CountDownLatch;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 358
    const-wide/16 v2, 1
  :L0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual { v0, v2, v3, v1 }, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
  .line 359
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    if-eqz v0, :L1
  .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L3
  .line 361
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quitSafely()Z
  .line 362
    const-string v0, "TOYGER"
    const-string v1, "toyger thread quited"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L1
  .line 368
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
  .line 369
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
  .line 370
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
  :L2
  .line 374
    return-void
  :L3
  .line 364
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quit()Z
  .line 365
    const-string v0, "TOYGER"
    const-string v1, "toyger thread quited"
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L4
    goto :L1
  :L5
  .line 371
    move-exception v0
  .line 372
    const-string v1, "TOYGER"
    invoke-virtual { v0 }, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L2
.end method

.method public reset()V
  .catch Ljava/lang/Throwable; { :L0 .. :L2 } :L3
  .catch Ljava/lang/Throwable; { :L5 .. :L6 } :L7
  .catch Ljava/lang/Throwable; { :L9 .. :L10 } :L3
  .registers 4
  .prologue
  .line 307
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-interface { v0 }, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
  .line 309
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L4
  .line 310
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 311
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L9
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 312
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->recycle()V
  :L2
    goto :L1
  :L3
  .line 317
    move-exception v0
  .line 318
    const-string v1, "TOYGER"
    invoke-virtual { v0 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L4
  .line 321
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-interface { v0 }, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L5
  .line 323
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L8
  .line 324
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
  .line 325
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->recycle()V
  .line 326
    invoke-interface { v1 }, Ljava/util/Iterator;->remove()V
  .line 327
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mDepthFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  :L6
    goto :L5
  :L7
  .line 329
    move-exception v0
  .line 330
    const-string v1, "TOYGER"
    invoke-virtual { v0 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L8
  .line 333
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mProcessThreadHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService$3;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 340
    return-void
  :L9
  .line 314
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->mColorFrameQueueLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual { v0 }, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
  .line 315
    invoke-interface { v1 }, Ljava/util/Iterator;->remove()V
  :L10
    goto :L0
.end method

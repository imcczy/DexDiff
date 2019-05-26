.class public Lcom/alipay/zoloz/toyger/upload/NineShootManager;
.super Ljava/lang/Object;
.source "SourceFile"

.field private count:I

.field private isFullRequirement:Z

.field private mFaceRemoteProtocol:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;

.field private mMainHandler:Landroid/os/Handler;

.field mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field private recordFrame:Z

.method public constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)V
  .registers 5
  .prologue
    const/4 v0, 0
  .line 24
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 20
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->isFullRequirement:Z
  .line 22
    iput v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
  .line 25
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
  .line 26
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 27
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mMainHandler:Landroid/os/Handler;
  .line 28
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/zoloz/toyger/upload/NineShootManager;Z)Z
  .registers 2
  .prologue
  .line 16
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->recordFrame:Z
    return p1
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
  .registers 2
  .prologue
  .line 16
    iget v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
    return v0
.end method

.method static synthetic access$108(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
  .registers 3
  .prologue
  .line 16
    iget v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
    add-int/lit8 v1, v0, 1
    iput v1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
    return v0
.end method

.method public destroy()V
  .registers 3
  .prologue
    const/4 v1, 0
  .line 73
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 74
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->isFullRequirement:Z
  .line 75
    iput v1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
  .line 76
    return-void
.end method

.method public isNeedUpload()Z
  .registers 3
  .prologue
    const/4 v0, 1
  .line 69
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I
    move-result v1
    if-ne v1, v0, :L1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public shootToygerFrame(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 7
  .prologue
    const/4 v4, 1
  .line 32
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mFaceRemoteProtocol:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getUploadMonitorPic()I
    move-result v0
    if-ne v0, v4, :L0
    if-eqz p1, :L0
  .line 34
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->isFullRequirement:Z
    if-nez v0, :L0
  .line 35
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->recordFrame:Z
    if-eqz v0, :L1
  :L0
  .line 66
    return-void
  :L1
  .line 38
    iput-boolean v4, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->recordFrame:Z
  .line 39
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/upload/a;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/upload/a;-><init>(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)V
    const-wide/16 v2, 500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 45
    const-string v0, "shootFaceFrame"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 46
    iget v0, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->count:I
    const/16 v1, 10
    if-lt v0, v1, :L2
  .line 47
    iput-boolean v4, p0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->isFullRequirement:Z
    goto :L0
  :L2
  .line 49
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/alipay/zoloz/toyger/upload/b;
    invoke-direct { v1, p0, p1 }, Lcom/alipay/zoloz/toyger/upload/b;-><init>(Lcom/alipay/zoloz/toyger/upload/NineShootManager;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
    const-string v2, "shootToygerFrame"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 62
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    goto :L0
.end method

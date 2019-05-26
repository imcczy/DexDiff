.class public Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "SourceFile"

.field private final static TAG:Ljava/lang/String; = "ToygerIsp"

.field private final ISP_DELAY:J

.field private begin:J

.field private ispRunning:Z

.field private mInitialized:Z

.field private mIspService:Lcom/alipay/zoloz/hardware/a/a;

.field private mIspThread:Landroid/os/HandlerThread;

.field private mIspThreadHandler:Landroid/os/Handler;

.field private mToygerIsp:Lcom/alipay/zoloz/a/b;

.method public constructor <init>()V
  .registers 5
  .prologue
    const/4 v0, 0
  .line 27
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V
  .line 39
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ispRunning:Z
  .line 47
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mInitialized:Z
  .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    const-wide/16 v2, 3
    invoke-virtual { v0, v2, v3 }, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    move-result-wide v0
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ISP_DELAY:J
  .line 51
    const-wide/16 v0, 0
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->begin:J
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;Landroid/graphics/Rect;[B[S)V
  .registers 4
  .prologue
  .line 27
    invoke-direct { p0, p1, p2, p3 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->adjustIsp(Landroid/graphics/Rect;[B[S)V
    return-void
.end method

.method private adjustIsp(Landroid/graphics/Rect;[B[S)V
  .catch Ljava/lang/Throwable; { :L1 .. :L2 } :L6
  .catchall { :L1 .. :L2 } :L9
  .catchall { :L4 .. :L5 } :L10
  .catchall { :L7 .. :L8 } :L9
  .catchall { :L11 .. :L12 } :L10
  .registers 11
  .prologue
    const/4 v4, 0
  .line 134
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/a/a;->a()I
    move-result v0
  .line 135
    const-string v1, "ToygerIsp"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "adjustIsp begin: getAEMode()="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 136
    if-eqz v0, :L0
  .line 137
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0, v4 }, Lcom/alipay/zoloz/hardware/a/a;->a(I)V
  :L0
  .line 140
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/a/a;->d()J
    move-result-wide v4
  .line 141
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/a/a;->e()I
    move-result v6
  :L1
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mToygerIsp:Lcom/alipay/zoloz/a/b;
    move-object v1, p2
    move-object v2, p3
    move-object v3, p1
    invoke-virtual/range { v0 .. v6 }, Lcom/alipay/zoloz/a/b;->a([B[SLandroid/graphics/Rect;JI)Lcom/alipay/zoloz/a/a;
    move-result-object v0
  .line 145
    if-eqz v0, :L2
  .line 146
    const-string v1, "ToygerIsp"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "result.needSet="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->a()Z
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", result.exposureTime="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
  .line 147
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->b()J
    move-result-wide v4
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", result.ISO="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
  .line 148
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->c()I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 146
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 149
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->a()Z
    move-result v1
    if-eqz v1, :L2
  .line 150
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->b()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Lcom/alipay/zoloz/hardware/a/a;->a(J)V
  .line 151
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/a;->c()I
    move-result v0
    invoke-virtual { v1, v0 }, Lcom/alipay/zoloz/hardware/a/a;->b(I)V
  :L2
  .line 157
    const-string v0, "ToygerIsp"
    const-string v1, "adjustIsp end."
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  :L3
  .line 160
    monitor-enter p0
  .line 161
    const/4 v0, 0
  :L4
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ispRunning:Z
  .line 162
    monitor-exit p0
  :L5
  .line 163
    return-void
  :L6
  .line 154
    move-exception v0
  :L7
  .line 155
    const-string v1, "ToygerIsp"
    invoke-static { v1, v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
  :L8
  .line 157
    const-string v0, "ToygerIsp"
    const-string v1, "adjustIsp end."
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    goto :L3
  :L9
    move-exception v0
    const-string v1, "ToygerIsp"
    const-string v2, "adjustIsp end."
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    throw v0
  :L10
  .line 162
    move-exception v0
  :L11
    monitor-exit p0
  :L12
    throw v0
.end method

.method private validateRegion(Landroid/graphics/RectF;)Z
  .registers 5
  .prologue
    const/high16 v2, 16256
    const/4 v1, 0
  .line 91
    if-eqz p1, :L2
  .line 92
    iget v0, p1, Landroid/graphics/RectF;->left:F
    cmpg-float v0, v0, v1
    if-ltz v0, :L0
    iget v0, p1, Landroid/graphics/RectF;->top:F
    cmpg-float v0, v0, v1
    if-ltz v0, :L0
    iget v0, p1, Landroid/graphics/RectF;->right:F
    cmpl-float v0, v0, v2
    if-gtz v0, :L0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F
    cmpl-float v0, v0, v2
    if-lez v0, :L2
  :L0
  .line 93
    const/4 v0, 0
  :L1
  .line 96
    return v0
  :L2
    const/4 v0, 1
    goto :L1
.end method

.method public adjustIsp(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V
  .catchall { :L1 .. :L3 } :L7
  .catchall { :L6 .. :L8 } :L7
  .registers 11
  .prologue
    const/high16 v4, 17008
    const/high16 v5, 16128
  .line 104
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    if-eqz v0, :L3
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->begin:J
    sub-long/2addr v0, v2
    iget-wide v2, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ISP_DELAY:J
    cmp-long v0, v0, v2
    if-ltz v0, :L3
  .line 106
    iget-boolean v0, p3, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->hasFace:Z
    if-eqz v0, :L4
  .line 107
    iget-object v0, p4, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  :L0
  .line 114
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->validateRegion(Landroid/graphics/RectF;)Z
    move-result v1
    if-eqz v1, :L3
  .line 115
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    iget v3, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    const/4 v4, 0
    invoke-static { v0, v1, v2, v3, v4 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->convertFaceRegion(Landroid/graphics/RectF;IIIZ)Landroid/graphics/Rect;
    move-result-object v0
  .line 116
    monitor-enter p0
  :L1
  .line 117
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ispRunning:Z
    if-eqz v1, :L5
  .line 118
    const-string v0, "ToygerIsp"
    const-string v1, "adjustIsp begin: but ispRunning==true, give up."
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 128
    monitor-exit p0
  :L3
  .line 131
    return-void
  :L4
  .line 109
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    int-to-float v0, v0
    div-float v1, v4, v0
  .line 110
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    int-to-float v0, v0
    div-float v2, v4, v0
  .line 111
    new-instance v0, Landroid/graphics/RectF;
    sub-float v3, v5, v1
    sub-float v4, v5, v2
    add-float/2addr v1, v5
    add-float/2addr v2, v5
    invoke-direct { v0, v3, v4, v1, v2 }, Landroid/graphics/RectF;-><init>(FFFF)V
    goto :L0
  :L5
  .line 120
    const/4 v1, 1
  :L6
    iput-boolean v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ispRunning:Z
  .line 121
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThreadHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/extservice/a;
    invoke-direct { v2, p0, v0, p1, p2 }, Lcom/alipay/zoloz/toyger/extservice/a;-><init>(Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;Landroid/graphics/Rect;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L2
  :L7
  .line 128
    move-exception v0
    monitor-exit p0
  :L8
    throw v0
.end method

.method public init(IIIII)V
  .registers 14
  .prologue
  .line 67
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/hardware/a/a;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    if-eqz v0, :L0
  .line 70
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/a/a;->b()[F
    move-result-object v6
  .line 71
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/a/a;->c()[[[F
    move-result-object v7
  .line 73
    new-instance v0, Landroid/os/HandlerThread;
    const-string v1, "adjustIsp"
    invoke-direct { v0, v1 }, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
  .line 74
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->start()V
  .line 75
    new-instance v0, Landroid/os/Handler;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
    invoke-virtual { v1 }, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThreadHandler:Landroid/os/Handler;
  .line 77
    new-instance v0, Lcom/alipay/zoloz/a/b;
    invoke-direct { v0 }, Lcom/alipay/zoloz/a/b;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mToygerIsp:Lcom/alipay/zoloz/a/b;
  .line 78
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mToygerIsp:Lcom/alipay/zoloz/a/b;
    move v1, p1
    move v2, p2
    move v3, p3
    move v4, p4
    move v5, p5
    invoke-virtual/range { v0 .. v7 }, Lcom/alipay/zoloz/a/b;->a(IIIII[F[[[F)V
  :L0
  .line 81
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mInitialized:Z
  .line 82
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->begin:J
  .line 83
    return-void
.end method

.method public isInitialized()Z
  .registers 2
  .prologue
  .line 189
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mInitialized:Z
    return v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
  .registers 2
  .prologue
  .line 55
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/service/BioService;->onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
  .line 56
    return-void
.end method

.method public onDestroy()V
  .registers 4
  .prologue
    const/4 v2, 0
  .line 167
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mToygerIsp:Lcom/alipay/zoloz/a/b;
    if-eqz v0, :L0
  .line 168
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mToygerIsp:Lcom/alipay/zoloz/a/b;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/a/b;->a()V
  :L0
  .line 171
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
    if-eqz v0, :L2
  .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L3
  .line 173
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quitSafely()Z
  :L1
  .line 177
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
  .line 178
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThreadHandler:Landroid/os/Handler;
  :L2
  .line 181
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->ispRunning:Z
  .line 183
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspService:Lcom/alipay/zoloz/hardware/a/a;
  .line 185
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/service/BioService;->onDestroy()V
  .line 186
    return-void
  :L3
  .line 175
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->mIspThread:Landroid/os/HandlerThread;
    invoke-virtual { v0 }, Landroid/os/HandlerThread;->quit()Z
    goto :L1
.end method

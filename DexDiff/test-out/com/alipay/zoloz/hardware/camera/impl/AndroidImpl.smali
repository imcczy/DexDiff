.class public Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/hardware/camera/c;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "InlinedApi"
  }
.end annotation

.field private static a:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

.field private b:Landroid/content/Context;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/hardware/Camera$Parameters;

.field private e:Lcom/alipay/zoloz/hardware/camera/b;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private final j:Ljava/lang/Object;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.method private constructor <init>(Landroid/content/Context;)V
  .registers 4
  .prologue
    const/4 v1, 0
  .line 51
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 35
    const/16 v0, 90
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->f:I
  .line 38
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 39
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->j:Ljava/lang/Object;
  .line 41
    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->k:I
  .line 42
    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->l:I
  .line 43
    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
  .line 44
    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
  .line 46
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
  .line 47
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
  .line 48
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
  .line 49
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
  .line 52
    if-nez p1, :L0
  .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Context can't be null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 55
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b:Landroid/content/Context;
  .line 56
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
  .line 57
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
  .line 58
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
  .line 59
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
  .line 64
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I
  .registers 4
  .prologue
  .line 312
    if-nez p1, :L0
  .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "deviceSetting can't be null"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 317
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isDisplayAuto()Z
    move-result v0
    if-eqz v0, :L2
  .line 318
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->g:I
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b(I)I
    move-result v0
  :L1
  .line 323
    return v0
  :L2
  .line 320
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getDisplayAngle()I
    move-result v0
    goto :L1
.end method

.method private a()V
  .registers 5
  .prologue
  .line 327
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :L2
  .line 328
    invoke-static { }, Lcom/alipay/zoloz/hardware/camera/a/a;->a()Lcom/alipay/zoloz/hardware/camera/a/a;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
  .line 329
    invoke-virtual { v1 }, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b:Landroid/content/Context;
    invoke-static { v2 }, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F
    move-result v2
    const/16 v3, 600
  .line 328
    invoke-virtual { v0, v1, v2, v3 }, Lcom/alipay/zoloz/hardware/camera/a/a;->a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    move-result-object v0
  .line 331
    if-eqz v0, :L0
  .line 332
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I
    iput v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
  .line 333
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
  .line 336
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->k:I
  .line 337
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->l:I
  .line 339
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
    iget v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
    invoke-virtual { v0, v1, v2 }, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
  :L0
  .line 342
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    if-eqz v0, :L1
  .line 343
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->f:I
  .line 344
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    iget v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->f:I
    invoke-virtual { v0, v1 }, Landroid/hardware/Camera;->setDisplayOrientation(I)V
  :L1
  .line 347
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
    invoke-virtual { v0 }, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;
    move-result-object v0
  .line 349
    if-eqz v0, :L2
  .line 350
    const-string v1, "continuous-video"
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L3
  .line 351
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
    const-string v1, "continuous-video"
    invoke-virtual { v0, v1 }, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
  :L2
  .line 357
    return-void
  :L3
  .line 352
    const-string v1, "auto"
    invoke-interface { v0, v1 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
    goto :L2
.end method

.method private a(Landroid/content/Context;)V
  .registers 2
  .prologue
  .line 264
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b:Landroid/content/Context;
  .line 265
    return-void
.end method

.method private a(I)Z
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
  .catch Ljava/lang/Throwable; { :L0 .. :L3 } :L5
  .registers 6
  .prologue
    const/4 v0, 0
    const/4 v3, -1
  .line 268
    const-string v1, "realStartCamera"
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  :L0
  .line 270
    invoke-static { p1 }, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
  .line 271
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    if-nez v1, :L2
  .line 272
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v1, :L1
  .line 273
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    const/4 v2, -1
    invoke-interface { v1, v2 }, Lcom/alipay/zoloz/hardware/camera/b;->onError(I)V
  :L1
  .line 308
    return v0
  :L2
  .line 278
    iput p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->g:I
  .line 280
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    if-eqz v1, :L1
  .line 281
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    invoke-virtual { v1 }, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
  .line 282
    invoke-direct { p0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a()V
  .line 283
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->d:Landroid/hardware/Camera$Parameters;
    invoke-virtual { v1, v2 }, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
  .line 285
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v1, :L3
  .line 286
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    new-instance v2, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;
    invoke-direct { v2, p0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;-><init>(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)V
    invoke-virtual { v1, v2 }, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
  :L3
  .line 295
    const/4 v0, 1
    goto :L1
  :L4
  .line 297
    move-exception v1
  .line 299
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v1, :L1
  .line 300
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    invoke-interface { v1, v3 }, Lcom/alipay/zoloz/hardware/camera/b;->onError(I)V
    goto :L1
  :L5
  .line 302
    move-exception v1
  .line 303
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v1, :L1
  .line 304
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    invoke-interface { v1, v3 }, Lcom/alipay/zoloz/hardware/camera/b;->onError(I)V
    goto :L1
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
  .registers 2
  .prologue
  .line 26
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->k:I
    return v0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
  .registers 2
  .prologue
  .line 26
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->l:I
    return v0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
  .registers 2
  .prologue
  .line 26
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
    return v0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
  .registers 2
  .prologue
  .line 26
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
    return v0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)Lcom/alipay/zoloz/hardware/camera/b;
  .registers 2
  .prologue
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    return-object v0
.end method

.method private b(I)I
  .registers 8
  .prologue
    const/16 v3, 270
    const/16 v2, 90
    const/4 v1, 0
  .line 360
  .line 361
    new-instance v4, Landroid/hardware/Camera$CameraInfo;
    invoke-direct { v4 }, Landroid/hardware/Camera$CameraInfo;-><init>()V
  .line 362
    invoke-static { p1, v4 }, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
  .line 364
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b:Landroid/content/Context;
    const-string v5, "window"
  .line 365
    invoke-virtual { v0, v5 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
  .line 367
    invoke-interface { v0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Display;->getRotation()I
    move-result v0
  .line 370
    packed-switch v0, :L9
    move v0, v1
  :L0
  .line 385
    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->facing:I
    const/4 v5, 1
    if-ne v1, v5, :L7
  .line 387
    sget-object v1, Lcom/alipay/android/phone/a/a/a;->b:Ljava/lang/Boolean;
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v1
    if-eqz v1, :L1
  .line 388
    iput v3, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I
  :L1
  .line 390
    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I
    add-int/2addr v0, v1
    rem-int/lit16 v0, v0, 360
  .line 391
    rsub-int v0, v0, 360
    rem-int/lit16 v0, v0, 360
  :L2
  .line 399
    return v0
  :L3
    move v0, v1
  .line 373
    goto :L0
  :L4
    move v0, v2
  .line 376
    goto :L0
  :L5
  .line 378
    const/16 v0, 180
  .line 379
    goto :L0
  :L6
    move v0, v3
  .line 381
    goto :L0
  :L7
  .line 394
    sget-object v1, Lcom/alipay/android/phone/a/a/a;->b:Ljava/lang/Boolean;
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v1
    if-eqz v1, :L8
  .line 395
    iput v2, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I
  :L8
  .line 397
    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I
    sub-int v0, v1, v0
    add-int/lit16 v0, v0, 360
    rem-int/lit16 v0, v0, 360
    goto :L2
  .line 370
  :L9
  .packed-switch 0
    :L3
    :L4
    :L5
    :L6
  .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
  .catchall { :L0 .. :L2 } :L3
  .registers 3
  .prologue
  .line 67
    const-class v1, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    monitor-enter v1
  :L0
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    if-nez v0, :L1
  .line 68
    new-instance v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;-><init>(Landroid/content/Context;)V
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
  :L1
  .line 71
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a(Landroid/content/Context;)V
  .line 72
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
  :L2
    monitor-exit v1
    return-object v0
  :L3
  .line 67
    move-exception v0
    monitor-exit v1
    throw v0
.end method

.method public closeCamera()V
  .registers 2
  .prologue
  .line 113
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
    if-nez v0, :L1
  :L0
  .line 118
    return-void
  :L1
  .line 117
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
    goto :L0
.end method

.method public colorToDepth(Landroid/graphics/PointF;)Landroid/graphics/PointF;
  .registers 3
  .prologue
  .line 250
    const/4 v0, 0
    return-object v0
.end method

.method public depthToColor(Landroid/graphics/PointF;)Landroid/graphics/PointF;
  .registers 3
  .prologue
  .line 255
    const/4 v0, 0
    return-object v0
.end method

.method public getCameraViewRotation()I
  .registers 2
  .prologue
  .line 215
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->f:I
    return v0
.end method

.method public getColorHeight()I
  .registers 2
  .prologue
  .line 225
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->l:I
    return v0
.end method

.method public getColorWidth()I
  .registers 2
  .prologue
  .line 220
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->k:I
    return v0
.end method

.method public getDepthHeight()I
  .registers 2
  .prologue
  .line 235
    const/4 v0, 0
    return v0
.end method

.method public getDepthWidth()I
  .registers 2
  .prologue
  .line 230
    const/4 v0, 0
    return v0
.end method

.method public getPreviewHeight()I
  .registers 2
  .prologue
  .line 245
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->n:I
    return v0
.end method

.method public getPreviewWidth()I
  .registers 2
  .prologue
  .line 240
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->m:I
    return v0
.end method

.method public initCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .registers 3
  .prologue
  .line 77
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
    if-eqz v0, :L1
  :L0
  .line 86
    return-void
  :L1
  .line 81
    if-eqz p1, :L2
  .line 82
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  :L2
  .line 85
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
    goto :L0
.end method

.method public openCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .registers 3
  .prologue
  .line 100
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
    if-eqz v0, :L1
  :L0
  .line 109
    return-void
  :L1
  .line 104
    if-eqz p1, :L2
  .line 105
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  :L2
  .line 108
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->p:Z
    goto :L0
.end method

.method public releaseCamera()V
  .registers 2
  .prologue
  .line 90
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
    if-nez v0, :L1
  :L0
  .line 96
    return-void
  :L1
  .line 94
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->o:Z
  .line 95
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->b:Landroid/content/Context;
    goto :L0
.end method

.method public setCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  .registers 2
  .prologue
  .line 210
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
  .line 211
    return-void
.end method

.method public setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
  .registers 2
  .prologue
  .line 261
    return-void
.end method

.method public startCamera()V
  .registers 3
  .prologue
    const/4 v1, 1
  .line 122
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
    if-eqz v0, :L1
  :L0
  .line 140
    return-void
  :L1
  .line 127
    invoke-static { }, Landroid/hardware/Camera;->getNumberOfCameras()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->h:I
  .line 129
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isCameraAuto()Z
    move-result v0
    if-eqz v0, :L3
  .line 130
    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->h:I
    if-gt v0, v1, :L4
  .line 131
    const/4 v0, 0
  :L2
  .line 137
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->a(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 138
    iput-boolean v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
    goto :L0
  :L3
  .line 134
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->i:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I
    move-result v0
    goto :L2
  :L4
    move v0, v1
    goto :L2
.end method

.method public startPreview(Landroid/view/SurfaceHolder;FII)V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 7
  .prologue
  .line 166
    const-string v0, "startPreview..."
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
  .line 167
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
    if-eqz v0, :L1
  :L0
  .line 185
    return-void
  :L1
  .line 170
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    if-eqz v0, :L0
  :L2
  .line 172
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    invoke-virtual { v0, p1 }, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
  .line 173
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    invoke-virtual { v0 }, Landroid/hardware/Camera;->startPreview()V
  :L3
  .line 183
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
    goto :L0
  :L4
  .line 174
    move-exception v0
  .line 175
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
  .line 177
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    if-eqz v0, :L0
  .line 178
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
    const/4 v1, -1
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/b;->onError(I)V
    goto :L0
.end method

.method public stopCamera()V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L6
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L3 .. :L5 } :L4
  .catchall { :L7 .. :L8 } :L4
  .registers 3
  .prologue
    const/4 v1, 0
  .line 144
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
    if-nez v0, :L1
  :L0
  .line 162
    return-void
  :L1
  .line 148
    iput-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->e:Lcom/alipay/zoloz/hardware/camera/b;
  .line 149
    invoke-virtual { p0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->stopPreview()V
  .line 151
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    if-eqz v0, :L0
  .line 152
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->j:Ljava/lang/Object;
    monitor-enter v1
  :L2
  .line 154
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    invoke-virtual { v0 }, Landroid/hardware/Camera;->release()V
  .line 155
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
  .line 156
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->q:Z
  :L3
  .line 160
    monitor-exit v1
    goto :L0
  :L4
    move-exception v0
    monitor-exit v1
  :L5
    throw v0
  :L6
  .line 157
    move-exception v0
  :L7
  .line 158
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
  :L8
    goto :L3
.end method

.method public stopPreview()V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L7
  .catchall { :L3 .. :L4 } :L7
  .catchall { :L6 .. :L8 } :L7
  .registers 4
  .prologue
  .line 189
    iget-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
    if-nez v0, :L1
  :L0
  .line 206
    return-void
  :L1
  .line 193
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    if-eqz v0, :L0
  .line 194
    iget-object v1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->j:Ljava/lang/Object;
    monitor-enter v1
  :L2
  .line 196
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
  .line 197
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    const/4 v2, 0
    invoke-virtual { v0, v2 }, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
  .line 198
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->c:Landroid/hardware/Camera;
    invoke-virtual { v0 }, Landroid/hardware/Camera;->stopPreview()V
  :L3
  .line 202
    monitor-exit v1
  :L4
  .line 204
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->r:Z
    goto :L0
  :L5
  .line 199
    move-exception v0
  :L6
  .line 200
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    goto :L3
  :L7
  .line 202
    move-exception v0
    monitor-exit v1
  :L8
    throw v0
.end method

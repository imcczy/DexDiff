.class public Lcom/alipay/zoloz/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;

.method static constructor <clinit>()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 2
  .prologue
  .line 20
    const/4 v0, 0
  :L0
    invoke-static { v0 }, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
  :L1
  .line 24
    return-void
  :L2
  .line 21
    move-exception v0
  .line 22
    const-string v1, "ToygerIsp"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a([B[SLandroid/graphics/Rect;JI)Lcom/alipay/zoloz/a/a;
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 19
  .prologue
  .line 70
    const/4 v10, 0
  .line 71
    iget-object v2, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    if-eqz v2, :L3
  :L0
  .line 73
    new-instance v5, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;
    invoke-direct { v5 }, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;-><init>()V
  .line 74
    iget v2, p3, Landroid/graphics/Rect;->left:I
    invoke-virtual { v5, v2 }, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;->setX(I)V
  .line 75
    iget v2, p3, Landroid/graphics/Rect;->top:I
    invoke-virtual { v5, v2 }, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;->setY(I)V
  .line 76
    iget v2, p3, Landroid/graphics/Rect;->right:I
    iget v3, p3, Landroid/graphics/Rect;->left:I
    sub-int/2addr v2, v3
    invoke-virtual { v5, v2 }, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;->setWidth(I)V
  .line 77
    iget v2, p3, Landroid/graphics/Rect;->bottom:I
    iget v3, p3, Landroid/graphics/Rect;->top:I
    sub-int/2addr v2, v3
    invoke-virtual { v5, v2 }, Lcom/alipay/streammedia/devicesengine/camera/FaceRectParams;->setHeight(I)V
  .line 78
    iget-object v2, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    move/from16 v0, p6
    int-to-long v8, v0
    move-object v3, p1
    move-object v4, p2
    move-wide/from16 v6, p4
    invoke-virtual/range { v2 .. v9 }, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;->ispAdjust([B[SLcom/alipay/streammedia/devicesengine/camera/FaceRectParams;JJ)Lcom/alipay/streammedia/devicesengine/camera/ispAdjustResult;
    move-result-object v3
  .line 80
    new-instance v2, Lcom/alipay/zoloz/a/a;
    iget-boolean v4, v3, Lcom/alipay/streammedia/devicesengine/camera/ispAdjustResult;->needSet:Z
    iget-wide v6, v3, Lcom/alipay/streammedia/devicesengine/camera/ispAdjustResult;->exposureTime:J
    iget v3, v3, Lcom/alipay/streammedia/devicesengine/camera/ispAdjustResult;->ISO:I
    invoke-direct { v2, v4, v6, v7, v3 }, Lcom/alipay/zoloz/a/a;-><init>(ZJI)V
  :L1
  .line 85
    const-string v3, "ToygerIsp"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "ToygerIsp.adjustIsp(), ispResult="
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v3, v4 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 86
    return-object v2
  :L2
  .line 81
    move-exception v2
  .line 82
    const-string v3, "ToygerIsp"
    invoke-static { v3, v2 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  :L3
    move-object v2, v10
    goto :L1
.end method

.method public a()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 3
  .prologue
  .line 90
    iget-object v0, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    if-eqz v0, :L1
  :L0
  .line 92
    iget-object v0, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    invoke-virtual { v0 }, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;->ispDestory()V
  :L1
  .line 97
    return-void
  :L2
  .line 93
    move-exception v0
  .line 94
    const-string v1, "ToygerIsp"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    goto :L1
.end method

.method public a(IIIII[F[[[F)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 14
  .prologue
  .line 43
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
  :L0
  .line 46
    new-instance v0, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    invoke-direct { v0 }, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
  .line 47
    new-instance v0, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;
    invoke-direct { v0 }, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;-><init>()V
  .line 48
    iput p1, v0, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;->orgWidth:I
  .line 49
    iput p2, v0, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;->orgHeight:I
  .line 50
    iput p3, v0, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;->dispWidth:I
  .line 51
    iput p4, v0, Lcom/alipay/streammedia/devicesengine/camera/ImageParams;->dispHeight:I
  .line 52
    iget-object v1, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    invoke-virtual { v1, v0, p6, p7, p5 }, Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;->ispCreate(Lcom/alipay/streammedia/devicesengine/camera/ImageParams;[F[[[FI)Z
  :L1
  .line 58
    const-string v0, "ToygerIsp"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "ToygerIsp.init(): mEngineApi="
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v4, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v4, ", cost "
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
  .line 59
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    sub-long v2, v4, v2
    invoke-virtual { v1, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " ms."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 58
    invoke-static { v0, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 60
    return-void
  :L2
  .line 53
    move-exception v0
  .line 54
    const-string v1, "ToygerIsp"
    invoke-static { v1, v0 }, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 56
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/a/b;->a:Lcom/alipay/streammedia/devicesengine/DevicesNativeEngineApi;
    goto :L1
.end method

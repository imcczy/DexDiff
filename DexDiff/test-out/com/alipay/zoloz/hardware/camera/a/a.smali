.class public Lcom/alipay/zoloz/hardware/camera/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/hardware/camera/a/a$a;
  }
.end annotation

.field private static b:Lcom/alipay/zoloz/hardware/camera/a/a;

.field private a:Lcom/alipay/zoloz/hardware/camera/a/a$a;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 23
    const/4 v0, 0
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/a/a;->b:Lcom/alipay/zoloz/hardware/camera/a/a;
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .prologue
  .line 25
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 22
    new-instance v0, Lcom/alipay/zoloz/hardware/camera/a/a$a;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/hardware/camera/a/a$a;-><init>(Lcom/alipay/zoloz/hardware/camera/a/a;)V
    iput-object v0, p0, Lcom/alipay/zoloz/hardware/camera/a/a;->a:Lcom/alipay/zoloz/hardware/camera/a/a$a;
  .line 27
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/zoloz/hardware/camera/a/a;
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L3 } :L4
  .registers 2
  .prologue
  .line 30
    const-class v1, Lcom/alipay/zoloz/hardware/camera/a/a;
    monitor-enter v1
  :L0
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/a/a;->b:Lcom/alipay/zoloz/hardware/camera/a/a;
    if-nez v0, :L2
  .line 31
    new-instance v0, Lcom/alipay/zoloz/hardware/camera/a/a;
    invoke-direct { v0 }, Lcom/alipay/zoloz/hardware/camera/a/a;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/a/a;->b:Lcom/alipay/zoloz/hardware/camera/a/a;
  .line 32
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/a/a;->b:Lcom/alipay/zoloz/hardware/camera/a/a;
  :L1
  .line 34
    monitor-exit v1
    return-object v0
  :L2
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/a/a;->b:Lcom/alipay/zoloz/hardware/camera/a/a;
  :L3
    goto :L1
  :L4
  .line 30
    move-exception v0
    monitor-exit v1
    throw v0
.end method

.method public static b()I
  .registers 1
  .prologue
  .line 317
    invoke-static { }, Lcom/alipay/zoloz/hardware/camera/a/a;->c()I
    move-result v0
    return v0
.end method

.method private static c()I
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Throwable; { :L3 .. :L4 } :L8
  .registers 5
  .prologue
    const/4 v1, 0
  .line 248
    const/4 v2, -1
  :L0
  .line 254
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  .line 256
    const/16 v3, 8
    if-le v0, v3, :L7
  .line 257
    invoke-static { }, Landroid/hardware/Camera;->getNumberOfCameras()I
  :L1
    move-result v0
  :L2
  .line 263
    if-ge v1, v0, :L10
  :L3
  .line 265
    new-instance v3, Landroid/hardware/Camera$CameraInfo;
    invoke-direct { v3 }, Landroid/hardware/Camera$CameraInfo;-><init>()V
  .line 266
    invoke-static { v1, v3 }, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
  .line 268
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I
  :L4
    const/4 v4, 1
    if-ne v3, v4, :L9
    move v0, v1
  :L5
  .line 277
    return v0
  :L6
  .line 259
    move-exception v0
  .line 260
    const-string v3, "face"
    invoke-virtual { v0 }, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v3, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L7
    move v0, v1
    goto :L2
  :L8
  .line 272
    move-exception v3
  :L9
  .line 263
    add-int/lit8 v1, v1, 1
    goto :L2
  :L10
    move v0, v2
    goto :L5
.end method

.method public a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Landroid/hardware/Camera$Size;",
      ">;FI)",
      "Landroid/hardware/Camera$Size;"
    }
  .end annotation
  .registers 8
  .prologue
  .line 40
    if-nez p1, :L1
  .line 41
    const/4 v0, 0
  :L0
  .line 57
    return-object v0
  :L1
  .line 44
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/a/a;->a:Lcom/alipay/zoloz/hardware/camera/a/a$a;
    invoke-static { p1, v0 }, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
  .line 46
    const/4 v0, 0
  .line 47
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v2
    move v1, v0
  :L2
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/Camera$Size;
  .line 48
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I
    if-lt v3, p3, :L5
    invoke-virtual { p0, v0, p2 }, Lcom/alipay/zoloz/hardware/camera/a/a;->a(Landroid/hardware/Camera$Size;F)Z
    move-result v3
    if-eqz v3, :L5
  .line 49
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "PreviewSize:w = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "h = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  :L3
  .line 54
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    if-ne v1, v0, :L4
  .line 55
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v0
    add-int/lit8 v1, v0, -1
  :L4
  .line 57
    invoke-interface { p1, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/hardware/Camera$Size;
    goto :L0
  :L5
  .line 52
    add-int/lit8 v0, v1, 1
    move v1, v0
  .line 53
    goto :L2
.end method

.method public a(Landroid/hardware/Camera$Size;F)Z
  .registers 7
  .prologue
  .line 132
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I
    int-to-float v0, v0
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I
    int-to-float v1, v1
    div-float/2addr v0, v1
  .line 133
    sub-float/2addr v0, p2
    invoke-static { v0 }, Ljava/lang/Math;->abs(F)F
    move-result v0
    float-to-double v0, v0
    const-wide v2, 4584304132692975288L
    cmpg-double v0, v0, v2
    if-gtz v0, :L1
  .line 134
    const/4 v0, 1
  :L0
  .line 136
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

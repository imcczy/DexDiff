.class public Lcom/alipay/zoloz/toyger/util/EnvCheck;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static ANDROID_VERSION_4_3:I = 18

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 18
    return-void
.end method

.method public static getCamera()Ljava/lang/String;
  .catch Ljava/lang/NoSuchFieldException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L3
  .registers 3
  .prologue
  .line 63
    const-string v1, "Android"
  :L0
  .line 65
    const-class v0, Lcom/alipay/android/phone/a/a/a;
    const-string v2, "a"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
  .line 66
    const/4 v2, 1
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 67
    const-class v2, Lcom/alipay/android/phone/a/a/a;
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L1
  .line 73
    return-object v0
  :L2
  .line 68
    move-exception v0
  .line 69
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    move-object v0, v1
  .line 72
    goto :L1
  :L3
  .line 70
    move-exception v0
  .line 71
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    move-object v0, v1
    goto :L1
.end method

.method private isLowOS()Z
  .registers 4
  .prologue
  .line 21
    const/4 v0, 0
  .line 23
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    if-eqz v1, :L0
  .line 24
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
  .line 26
    const/16 v2, 18
    if-ge v1, v2, :L0
  .line 27
    const/4 v0, 1
  :L0
  .line 31
    return v0
.end method

.method public check()Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .registers 4
  .prologue
  .line 35
    sget-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  .line 38
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/util/EnvCheck;->isLowOS()Z
    move-result v1
    if-eqz v1, :L1
  .line 39
    sget-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
  :L0
  .line 59
    return-object v0
  :L1
  .line 44
    const-string v1, "Android"
    invoke-static { }, Lcom/alipay/zoloz/toyger/util/EnvCheck;->getCamera()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
  .line 45
    const-string v1, "armeabi-v7a"
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L2
  .line 46
    sget-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    goto :L0
  :L2
  .line 50
    invoke-static { }, Lcom/alipay/zoloz/hardware/camera/a/a;->b()I
    move-result v1
  .line 52
    const/4 v2, -1
    if-ne v1, v2, :L0
  .line 53
    sget-object v0, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    goto :L0
.end method

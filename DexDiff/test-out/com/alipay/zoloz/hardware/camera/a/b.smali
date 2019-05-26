.class public Lcom/alipay/zoloz/hardware/camera/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .registers 7
  .prologue
  .line 14
    const/4 v1, 0
  .line 15
    if-eqz p0, :L4
  .line 17
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
  .line 18
    array-length v4, p0
    const/4 v0, 0
    move v2, v0
  :L0
    if-ge v2, v4, :L4
    aget-object v0, p0, v2
  .line 20
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMinApiLevel()I
    move-result v5
    if-lt v3, v5, :L3
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMaxApiLevel()I
    move-result v5
    if-gt v3, v5, :L3
  :L1
  .line 27
    if-nez v0, :L2
  .line 28
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V
  :L2
  .line 31
    return-object v0
  :L3
  .line 18
    add-int/lit8 v0, v2, 1
    move v2, v0
    goto :L0
  :L4
    move-object v0, v1
    goto :L1
.end method

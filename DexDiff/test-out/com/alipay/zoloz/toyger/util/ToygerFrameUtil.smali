.class public Lcom/alipay/zoloz/toyger/util/ToygerFrameUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static getFaceParam(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;",
      ")",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 6
  .prologue
  .line 37
    const/4 v0, 0
  .line 38
    if-eqz p0, :L1
  .line 39
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 40
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 41
    if-eqz v1, :L2
  .line 42
    const-string v2, "frectwidth"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1 }, Landroid/graphics/RectF;->width()F
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 43
    const-string v2, "fwidthscale"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1 }, Landroid/graphics/RectF;->height()F
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 44
    const-string v2, "frectX"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    iget v4, v1, Landroid/graphics/RectF;->left:F
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 45
    const-string v2, "frectY"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    iget v1, v1, Landroid/graphics/RectF;->top:F
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, ""
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 52
    const-string v1, "fquality"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 53
    const-string v1, "flight"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 54
    const-string v1, "facePitch"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 55
    const-string v1, "faceYaw"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 56
    const-string v1, "faceEyeLeftHwratio"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 57
    const-string v1, "faceEyeRightHwratio"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 58
    const-string v1, "faceGaussian"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 59
    const-string v1, "faceMotion"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 60
    const-string v1, "integrity"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 61
    const-string v1, "deviceLight"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 62
    const-string v1, "distance"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-short v3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
  .line 64
    return-object v0
  :L2
  .line 47
    const-string v1, "frectwidth"
    const-string v2, ""
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 48
    const-string v1, "fwidthscale"
    const-string v2, ""
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 49
    const-string v1, "frectX"
    const-string v2, ""
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 50
    const-string v1, "frectY"
    const-string v2, ""
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto/16 :L0
.end method

.method public static getFaceParam(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/toyger/bean/ToygerFrame;",
      ")",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 23
    const/4 v0, 0
  .line 24
    if-eqz p0, :L0
  .line 25
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/util/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Ljava/util/Map;
    move-result-object v0
  :L0
  .line 27
    return-object v0
.end method

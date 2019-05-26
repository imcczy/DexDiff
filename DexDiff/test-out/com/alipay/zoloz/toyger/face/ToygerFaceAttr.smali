.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
.super Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
.implements Lcom/alipay/zoloz/toyger/ToygerAttr;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 12
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V
  .registers 3
  .prologue
  .line 14
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;-><init>()V
  .line 15
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->hasFace:Z
  .line 16
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->eyeBlink:Z
  .line 17
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 18
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->quality:F
  .line 19
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->yaw:F
  .line 20
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->pitch:F
  .line 21
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->gaussian:F
  .line 22
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->motion:F
  .line 23
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->brightness:F
  .line 24
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->integrity:F
  .line 25
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->leftEyeBlinkRatio:F
  .line 26
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->rightEyeBlinkRatio:F
  .line 27
    iget-short v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
    iput-short v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->distance:S
  .line 28
    return-void
.end method

.method public brightness()F
  .registers 2
  .prologue
  .line 57
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->brightness:F
    return v0
.end method

.method public distance()S
  .registers 2
  .prologue
  .line 67
    iget-short v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->distance:S
    return v0
.end method

.method public eyeBlink()Z
  .registers 2
  .prologue
  .line 76
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->eyeBlink:Z
    return v0
.end method

.method public gaussian()F
  .registers 2
  .prologue
  .line 47
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->gaussian:F
    return v0
.end method

.method public hasTarget()Z
  .registers 2
  .prologue
  .line 32
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->hasFace:Z
    return v0
.end method

.method public integrity()F
  .registers 2
  .prologue
  .line 62
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->integrity:F
    return v0
.end method

.method public leftEyeBlinkRatio()F
  .registers 2
  .prologue
  .line 103
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->leftEyeBlinkRatio:F
    return v0
.end method

.method public motion()F
  .registers 2
  .prologue
  .line 52
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->motion:F
    return v0
.end method

.method public pitch()F
  .registers 2
  .prologue
  .line 94
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->pitch:F
    return v0
.end method

.method public quality()F
  .registers 2
  .prologue
  .line 42
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->quality:F
    return v0
.end method

.method public region()Landroid/graphics/RectF;
  .registers 2
  .prologue
  .line 37
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->faceRegion:Landroid/graphics/RectF;
    return-object v0
.end method

.method public rightEyeBlinkRatio()F
  .registers 2
  .prologue
  .line 112
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->rightEyeBlinkRatio:F
    return v0
.end method

.method public yaw()F
  .registers 2
  .prologue
  .line 85
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->yaw:F
    return v0
.end method

.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceState;
.super Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
.implements Lcom/alipay/zoloz/toyger/ToygerState;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 12
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;-><init>()V
  .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;)V
  .registers 3
  .prologue
  .line 16
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;-><init>()V
  .line 17
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->hasFace:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->hasFace:Z
  .line 18
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->brightness:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->brightness:I
  .line 19
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->distance:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->distance:I
  .line 20
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->faceInCenter:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->faceInCenter:Z
  .line 21
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodPitch:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodPitch:I
  .line 22
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodYaw:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodYaw:I
  .line 23
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->isMoving:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->isMoving:Z
  .line 24
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodQuality:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodQuality:Z
  .line 25
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->progress:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->progress:F
  .line 26
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->messageCode:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->messageCode:I
  .line 27
    return-void
.end method

.method public brightness()I
  .registers 2
  .prologue
  .line 36
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->brightness:I
    return v0
.end method

.method public distance()I
  .registers 2
  .prologue
  .line 41
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->distance:I
    return v0
.end method

.method public getMessageCode()I
  .registers 2
  .prologue
  .line 76
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->messageCode:I
    return v0
.end method

.method public getProgress()F
  .registers 2
  .prologue
  .line 71
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->progress:F
    return v0
.end method

.method public goodPitch()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .prologue
  .line 61
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodPitch:I
    return v0
.end method

.method public goodYaw()I
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
  .prologue
  .line 66
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodYaw:I
    return v0
.end method

.method public hasTarget()Z
  .registers 2
  .prologue
  .line 31
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->hasFace:Z
    return v0
.end method

.method public isGoodQuality()Z
  .registers 2
  .prologue
  .line 56
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->goodQuality:Z
    return v0
.end method

.method public isInCenter()Z
  .registers 2
  .prologue
  .line 46
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->faceInCenter:Z
    return v0
.end method

.method public isMoving()Z
  .registers 2
  .prologue
  .line 51
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->isMoving:Z
    return v0
.end method

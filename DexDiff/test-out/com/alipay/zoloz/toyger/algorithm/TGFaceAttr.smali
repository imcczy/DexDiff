.class public Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
.super Ljava/lang/Object;
.source "SourceFile"

.field public brightness:F

.field public distance:S

.field public eyeBlink:Z

.field public faceRegion:Landroid/graphics/RectF;

.field public gaussian:F

.field public hasFace:Z

.field public integrity:F

.field public leftEyeBlinkRatio:F

.field public motion:F

.field public pitch:F

.field public quality:F

.field public rightEyeBlinkRatio:F

.field public yaw:F

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 81
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 82
    new-instance v0, Landroid/graphics/RectF;
    invoke-direct { v0 }, Landroid/graphics/RectF;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 83
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V
  .registers 4
  .prologue
  .line 119
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 120
    if-eqz p1, :L0
  .line 121
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
  .line 122
    iget-boolean v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
  .line 123
    new-instance v0, Landroid/graphics/RectF;
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
    invoke-direct { v0, v1 }, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 124
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
  .line 125
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
  .line 126
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
  .line 127
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
  .line 128
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
  .line 129
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
  .line 130
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
  .line 131
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
  .line 132
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
  .line 133
    iget-short v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
    iput-short v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
  :L0
  .line 135
    return-void
.end method

.method public constructor <init>(ZZLandroid/graphics/RectF;FFFFFFFFFS)V
  .registers 14
  .prologue
  .line 103
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 104
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
  .line 105
    iput-boolean p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
  .line 106
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 107
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
  .line 108
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
  .line 109
    iput p6, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
  .line 110
    iput p7, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
  .line 111
    iput p8, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
  .line 112
    iput p9, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
  .line 113
    iput p10, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
  .line 114
    iput p11, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
  .line 115
    iput p12, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
  .line 116
    iput-short p13, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
  .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 139
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "TGFaceAttr{hasFace="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", eyeBlink="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", faceRegion="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", quality="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", yaw="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", pitch="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", gaussian="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", motion="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->motion:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", brightness="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", integrity="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", leftEyeBlinkRatio="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", rightEyeBlinkRatio="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", distance="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-short v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

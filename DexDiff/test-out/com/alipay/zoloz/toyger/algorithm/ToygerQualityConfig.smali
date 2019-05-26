.class public Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field public maxGaussian:F

.field public maxMotion:F

.field public maxPitch:F

.field public maxYaw:F

.field public max_iod:F

.field public minBrightness:F

.field public minFaceWidth:F

.field public minIntegrity:F

.field public minQuality:F

.field public min_iod:F

.field public stackSize:I

.field public stackTime:I

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 66
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 68
    return-void
.end method

.method public constructor <init>(FFFFFFFFIIFF)V
  .registers 13
  .prologue
  .line 93
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 94
    iput p1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minBrightness:F
  .line 95
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minFaceWidth:F
  .line 96
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minIntegrity:F
  .line 97
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxPitch:F
  .line 98
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxYaw:F
  .line 99
    iput p6, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxGaussian:F
  .line 100
    iput p7, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxMotion:F
  .line 101
    iput p8, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minQuality:F
  .line 102
    iput p9, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->stackSize:I
  .line 103
    iput p10, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->stackTime:I
  .line 104
    iput p11, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->min_iod:F
  .line 105
    iput p12, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->max_iod:F
  .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 110
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerQualityConfig{minBrightness="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minBrightness:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", minFaceWidth="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minFaceWidth:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", minIntegrity="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minIntegrity:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", maxPitch="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxPitch:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", maxYaw="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxYaw:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", maxGaussian="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxGaussian:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", maxMotion="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->maxMotion:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", minQuality="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->minQuality:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", stackSize="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->stackSize:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", stackTime="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->stackTime:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", min_iod="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->min_iod:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", max_iod="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;->max_iod:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

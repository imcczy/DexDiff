.class public Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field public cameraConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;

.field public livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;

.field public qualityConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 24
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 25
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->qualityConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
  .line 26
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
  .line 27
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->cameraConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
  .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;)V
  .registers 4
  .prologue
  .line 39
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 40
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->qualityConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
  .line 41
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
  .line 42
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->cameraConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
  .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 47
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerConfig{qualityConfig="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->qualityConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", livenessConfig="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", cameraConfig="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->cameraConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

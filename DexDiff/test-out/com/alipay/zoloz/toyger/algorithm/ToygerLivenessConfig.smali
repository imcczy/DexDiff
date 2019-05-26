.class public Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field public batLivenessThreshold:F

.field public collection:Ljava/lang/String;

.field public difference:F

.field public dragonflyMax:F

.field public dragonflyMin:F

.field public eyeHwRatio:F

.field public geminiMax:F

.field public geminiMin:F

.field public livenessCombinations:Ljava/lang/String;

.field public yunqiQuality:F

.method public constructor <init>()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 49
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 41
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMin:F
  .line 43
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMax:F
  .line 45
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMin:F
  .line 47
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMax:F
  .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
  .registers 7
  .prologue
    const/4 v0, 0
  .line 56
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 41
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMin:F
  .line 43
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMax:F
  .line 45
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMin:F
  .line 47
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMax:F
  .line 57
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->livenessCombinations:Ljava/lang/String;
  .line 58
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->eyeHwRatio:F
  .line 59
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->difference:F
  .line 60
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->yunqiQuality:F
  .line 61
    iput p5, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->batLivenessThreshold:F
  .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .prologue
    const/16 v2, 39
  .line 66
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerLivenessConfig{livenessCombinations='"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->livenessCombinations:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", collection='"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->collection:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", eyeHwRatio="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->eyeHwRatio:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", difference="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->difference:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", yunqiQuality="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->yunqiQuality:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", batLivenessThreshold="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->batLivenessThreshold:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", dragonflyMin="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMin:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", dragonflyMax="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->dragonflyMax:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", geminiMin="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMin:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", geminiMax="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;->geminiMax:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

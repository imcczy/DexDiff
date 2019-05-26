.class public Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field public color2depthExtrin:[F

.field public colorIntrin:[F

.field public depthIntrin:[F

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>([F[F[F)V
  .registers 4
  .prologue
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 17
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->colorIntrin:[F
  .line 18
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->depthIntrin:[F
  .line 19
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->color2depthExtrin:[F
  .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 24
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerCameraConfig{colorIntrin="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->colorIntrin:[F
  .line 25
    invoke-static { v1 }, Ljava/util/Arrays;->toString([F)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", depthIntrin="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->depthIntrin:[F
  .line 26
    invoke-static { v1 }, Ljava/util/Arrays;->toString([F)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", color2depthExtrin="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->color2depthExtrin:[F
  .line 27
    invoke-static { v1 }, Ljava/util/Arrays;->toString([F)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 24
    return-object v0
.end method

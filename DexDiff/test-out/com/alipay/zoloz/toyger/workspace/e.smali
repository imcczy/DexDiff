.class Lcom/alipay/zoloz/toyger/workspace/e;
.super Ljava/lang/Object;
.implements Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.field private b:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
  .registers 2
  .prologue
  .line 1178
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public countdown(I)V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 4
  .prologue
  .line 1182
    if-lez p1, :L1
  .line 1183
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->b:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v1
    if-eq v0, v1, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v0
    if-eqz v0, :L0
  .line 1184
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .line 1185
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->b:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  :L0
  .line 1189
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1300(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    move-result-object v0
    if-eqz v0, :L1
  .line 1190
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1400(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Ljava/util/Vector;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/e;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$1300(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->getData()Lcom/alipay/mobile/security/bio/sensor/SensorData;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
  :L1
  .line 1196
    return-void
  :L2
  .line 1192
    move-exception v0
  .line 1193
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    goto :L1
.end method

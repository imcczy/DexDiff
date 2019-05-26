.class Lcom/alipay/zoloz/toyger/upload/b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;

.field final synthetic b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;

.method constructor <init>(Lcom/alipay/zoloz/toyger/upload/NineShootManager;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 3
  .prologue
  .line 49
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/upload/b;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L3
  .catchall { :L0 .. :L1 } :L6
  .catchall { :L4 .. :L5 } :L6
  .registers 5
  :L0
  .prologue
  .line 53
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/b;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->addMonitorImage(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
  .line 54
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->access$108(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
  :L1
  .line 58
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "NineShootManager.addMonitoryFrame() : "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/b;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", count="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
  .line 59
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->access$100(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 58
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 61
    return-void
  :L3
  .line 55
    move-exception v0
  :L4
  .line 56
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
  :L5
  .line 58
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "NineShootManager.addMonitoryFrame() : "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/b;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", count="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
  .line 59
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->access$100(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 58
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L2
  :L6
    move-exception v0
    const-string v1, "TOYGER"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "NineShootManager.addMonitoryFrame() : "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/upload/b;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", count="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/upload/b;->b:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
  .line 59
    invoke-static { v3 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->access$100(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)I
    move-result v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 58
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    throw v0
.end method

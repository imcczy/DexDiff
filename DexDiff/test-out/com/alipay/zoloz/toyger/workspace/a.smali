.class Lcom/alipay/zoloz/toyger/workspace/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;)V
  .registers 2
  .prologue
  .line 121
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/a;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 124
    invoke-static { }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    move-result-object v0
  .line 127
    const-class v1, Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/ZimRecordService;
  .line 128
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/a;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getUpload()Lcom/alibaba/fastjson/JSONObject;
    move-result-object v1
    const-string v2, "log_classifier"
    invoke-virtual { v1, v2 }, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 129
    new-instance v2, Ljava/util/HashSet;
    const-string v3, "#"
    invoke-virtual { v1, v3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v1
    invoke-direct { v2, v1 }, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    invoke-virtual { v0, v2 }, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->setLogClassifier(Ljava/util/Set;)V
  .line 130
    return-void
.end method

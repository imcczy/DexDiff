.class public Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;
.super Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.source "SourceFile"

.method public constructor <init>()V
  .registers 7
  .prologue
    const/4 v5, 1
    const/4 v4, 0
  .line 21
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;-><init>()V
  .line 22
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V
  .line 23
    const/16 v1, 100
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V
  .line 24
    const-class v1, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppName(Ljava/lang/String;)V
  .line 25
    const-class v1, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppInterfaceName(Ljava/lang/String;)V
  .line 26
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addApplication(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V
  .line 29
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V
  .line 30
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V
  .line 31
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V
  .line 32
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V
  .line 34
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V
  .line 35
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V
  .line 36
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { v1 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V
  .line 37
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V
  .line 40
    new-array v0, v5, [Ljava/lang/Long;
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_PANO:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v4
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addProductID([Ljava/lang/Long;)V
  .line 43
    const-string v0, "Cherry"
    const-string v1, "Cherry"
    invoke-static { v0, v1 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 44
    new-array v0, v5, [Ljava/lang/Long;
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_DARK:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v4
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addProductID([Ljava/lang/Long;)V
  :L0
  .line 47
    invoke-static { }, Lcom/alipay/zoloz/toyger/ToygerMetaInfo;->isGemini()Z
    move-result v0
    if-eqz v0, :L1
  .line 48
    new-array v0, v5, [Ljava/lang/Long;
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_GEMINI:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v4
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addProductID([Ljava/lang/Long;)V
  :L1
  .line 51
    invoke-static { }, Lcom/alipay/zoloz/toyger/ToygerMetaInfo;->isDragonfly()Z
    move-result v0
    if-eqz v0, :L2
  .line 52
    new-array v0, v5, [Ljava/lang/Long;
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_DRAGONFLY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v4
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addProductID([Ljava/lang/Long;)V
  :L2
  .line 55
    invoke-static { }, Lcom/alipay/zoloz/toyger/ToygerMetaInfo;->isBat()Z
    move-result v0
    if-eqz v0, :L3
  .line 56
    new-array v0, v5, [Ljava/lang/Long;
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_3D:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J
    move-result-wide v2
    invoke-static { v2, v3 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    aput-object v1, v0, v4
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/bean/ZFaceMetaInfo;->addProductID([Ljava/lang/Long;)V
  :L3
  .line 58
    return-void
.end method

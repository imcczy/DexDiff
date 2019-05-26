.class public Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;
.super Lcom/alipay/zoloz/toyger/upload/UploadChannel;
.source "SourceFile"

.field private mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
  .registers 4
  .prologue
  .line 21
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/upload/UploadChannel;-><init>()V
  .line 22
    if-nez p1, :L0
  .line 23
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;
    const-string v1, "BioServiceManager is null..."
    invoke-direct { v0, v1 }, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L0
  .line 26
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { p1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
  .line 28
    return-void
.end method

.method public uploadBehaviourLog(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  .registers 6
  .prologue
  .line 66
    if-eqz p1, :L0
  .line 67
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V
  .line 68
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;
  .line 69
    invoke-static { p1 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B
  .line 70
    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;
  .line 71
    const/4 v1, 0
    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z
  .line 72
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I
  :L0
  .line 74
    return-void
.end method

.method public uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  .registers 7
  .prologue
  .line 33
    if-eqz p1, :L0
    if-eqz p2, :L0
  .line 34
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V
  .line 35
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;
  .line 36
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B
  .line 37
    invoke-static { p2 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B
  .line 38
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;
  .line 39
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:[B
  .line 40
    const/4 v1, 1
    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z
  .line 42
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I
  :L0
  .line 45
    return-void
.end method

.method public uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  .registers 7
  .prologue
  .line 50
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B
    if-nez v0, :L1
  .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "content is empty"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
  :L0
  .line 62
    return-void
  :L1
  .line 53
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V
  .line 54
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;
  .line 55
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B
  .line 56
    invoke-static { p2 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B
  .line 57
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;
  .line 58
    const/4 v1, 0
    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z
  .line 59
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:[B
  .line 60
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { v1, v0 }, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I
    goto :L0
.end method

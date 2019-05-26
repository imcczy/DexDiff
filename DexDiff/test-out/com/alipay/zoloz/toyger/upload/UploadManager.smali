.class public Lcom/alipay/zoloz/toyger/upload/UploadManager;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static TAG:Ljava/lang/String; = "UploadManager"

.field private mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field private mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;

.field private mContext:Landroid/content/Context;

.field private mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;

.field private mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.field mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.field private mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;

.field private publicKey:Ljava/lang/String;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
  .catch Ljava/lang/Throwable; { :L1 .. :L2 } :L4
  .registers 8
  .prologue
  .line 61
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 62
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 64
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 65
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioTaskService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
  .line 66
    invoke-virtual { p2 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mContext:Landroid/content/Context;
  .line 67
    invoke-interface { p3 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
  .line 68
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mContext:Landroid/content/Context;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getPublicKey(Landroid/content/Context;Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->publicKey:Ljava/lang/String;
  .line 71
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v1
  .line 72
    const/4 v0, 2
  .line 73
    if-eqz v1, :L0
    const-string v2, "meta_serializer"
    invoke-interface { v1, v2 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L0
  .line 74
    const-string v0, "meta_serializer"
    invoke-interface { v1, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  :L0
  .line 77
    packed-switch v0, :L5
  .line 83
    const-string v0, "com.alipay.zoloz.toyger.upload.UploadChannelByJson"
  :L1
  .line 88
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
  .line 89
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Class;
    const/4 v2, 0
    const-class v3, Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    aput-object v3, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
  .line 90
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  .line 91
    const/4 v1, 1
    new-array v1, v1, [Ljava/lang/Object;
    const/4 v2, 0
    aput-object p2, v1, v2
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
  :L2
  .line 95
    new-instance v0, Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->getToygerFaceService()Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    move-result-object v1
    invoke-interface { p3 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v2
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
  .line 96
    return-void
  :L3
  .line 79
    const-string v0, "com.alipay.zoloz.toyger.upload.UploadChannelByPb"
    goto :L1
  :L4
  .line 92
    move-exception v0
  .line 93
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    goto :L2
  .line 77
  :L5
  .packed-switch 2
    :L3
  .end packed-switch
.end method

.method private getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
  .registers 11
  .prologue
    const/16 v5, 992
  .line 162
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    invoke-direct { v1 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;-><init>()V
  .line 163
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;
    invoke-direct { v2 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;-><init>()V
  .line 164
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mContext:Landroid/content/Context;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/runtime/Runtime;->getFrameworkVersion(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v2, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setClientVer(Ljava/lang/String;)V
  .line 165
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setModel(Ljava/lang/String;)V
  .line 166
    const-string v0, "android"
    invoke-virtual { v2, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setOs(Ljava/lang/String;)V
  .line 167
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->setOsVer(Ljava/lang/String;)V
  .line 169
    new-instance v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;
    invoke-direct { v3 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;-><init>()V
  .line 171
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setApdid(Ljava/lang/String;)V
  .line 172
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setAppid(Ljava/lang/String;)V
  .line 173
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v4, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
    invoke-virtual { v0, v4 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
  .line 174
    if-eqz v0, :L0
  .line 175
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getApDidToken()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setApdidToken(Ljava/lang/String;)V
  :L0
  .line 178
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setBehid(Ljava/lang/String;)V
  .line 179
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    if-eqz v0, :L3
  .line 180
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setToken(Ljava/lang/String;)V
  .line 181
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I
    move-result v0
    const/16 v4, 991
    if-eq v0, v4, :L1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I
    move-result v0
    if-ne v0, v5, :L5
  :L1
  .line 182
    const/16 v0, 302
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V
  :L2
  .line 188
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I
    move-result v0
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setType(I)V
  .line 189
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setBizid(Ljava/lang/String;)V
  :L3
  .line 191
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setUid(Ljava/lang/String;)V
  .line 192
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setVtoken(Ljava/lang/String;)V
  .line 193
    iget-object v0, p1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setVerifyid(Ljava/lang/String;)V
  .line 195
    new-instance v4, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;
    invoke-direct { v4 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;-><init>()V
  .line 196
    invoke-virtual { p2 }, Lcom/alipay/mobile/security/faceauth/InvokeType;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v4, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setInvtp(Ljava/lang/String;)V
  .line 197
    const-string v0, ""
    invoke-virtual { v4, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setTm(Ljava/lang/String;)V
  .line 198
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, ""
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v5 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRetryTime()I
    move-result v5
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v4, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->setRetry(Ljava/lang/String;)V
  .line 200
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
  .line 201
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioTaskService:Lcom/alipay/mobile/security/bio/service/BioTaskService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioTaskService;->getTasks()Ljava/util/Vector;
    move-result-object v0
  .line 202
    invoke-virtual { v0 }, Ljava/util/Vector;->iterator()Ljava/util/Iterator;
    move-result-object v6
  :L4
    invoke-interface { v6 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L7
    invoke-interface { v6 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/task/SubTask;
  .line 203
    check-cast v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
  .line 205
    if-eqz v0, :L4
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->isHasBeHaviorInfo()Z
    move-result v7
    if-eqz v7, :L4
  .line 206
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->getBisBehavTask()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    move-result-object v0
    invoke-interface { v5, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L4
  :L5
  .line 183
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I
    move-result v0
    if-ne v0, v5, :L6
  .line 184
    const/16 v0, 303
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V
    goto/16 :L2
  :L6
  .line 186
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioAction()I
    move-result v0
    invoke-virtual { v3, v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->setSampleMode(I)V
    goto/16 :L2
  :L7
  .line 210
    invoke-virtual { v1, v4 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavCommon(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;)V
  .line 211
    invoke-virtual { v1, v5 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavTask(Ljava/util/List;)V
  .line 212
    invoke-virtual { v1, v3 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setBehavToken(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;)V
  .line 213
    invoke-virtual { v1, v2 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->setClientInfo(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;)V
  .line 215
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "bisBehavLog:"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static { v1 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 217
    return-object v1
.end method

.method public static getPublicKey(Landroid/content/Context;Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)Ljava/lang/String;
  .catch Ljava/lang/IllegalStateException; { :L0 .. :L4 } :L5
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L4 } :L6
  .registers 7
  .prologue
  .line 136
    const-string v1, ""
  .line 138
    const-string v0, "bid-log-key-public.key"
  .line 139
    const-string v2, "bid-log-key-public_t.key"
  :L0
  .line 142
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "PublicKey:"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getEnv()I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 143
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getEnv()I
    move-result v3
    if-nez v3, :L3
  .line 144
    invoke-static { p0, v0 }, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B
    move-result-object v0
    move-object v2, v0
  :L1
  .line 148
    new-instance v0, Ljava/lang/String;
    invoke-direct { v0, v2 }, Ljava/lang/String;-><init>([B)V
  :L2
  .line 158
    return-object v0
  :L3
  .line 146
    invoke-static { p0, v2 }, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B
  :L4
    move-result-object v0
    move-object v2, v0
    goto :L1
  :L5
  .line 150
    move-exception v0
  .line 151
    invoke-virtual { v0 }, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    move-object v0, v1
  .line 154
    goto :L2
  :L6
  .line 152
    move-exception v0
  .line 153
    invoke-virtual { v0 }, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    move-object v0, v1
    goto :L2
.end method

.method public destroy()V
  .registers 2
  .prologue
  .line 242
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    if-eqz v0, :L0
  .line 243
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->destroy()V
  :L0
  .line 245
    return-void
.end method

.method public getNineShoot()Lcom/alipay/zoloz/toyger/upload/UploadContent;
  .registers 5
  .prologue
  .line 221
    const/4 v0, 0
  .line 223
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    if-nez v1, :L1
  :L0
  .line 234
    return-object v0
  :L1
  .line 226
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->getToygerFaceService()Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->generateMonitorBlob()Ljava/util/Map;
    move-result-object v2
  .line 227
    const-string v0, "content"
    invoke-interface { v2, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
    check-cast v0, [B
  .line 228
    const-string v1, "key"
    invoke-interface { v2, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [B
    check-cast v1, [B
  .line 229
    const-string v3, "isUTF8"
    invoke-interface { v2, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
    invoke-virtual { v2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v3
  .line 230
    new-instance v2, Lcom/alipay/zoloz/toyger/upload/UploadContent;
    invoke-direct { v2, v0, v1, v3 }, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V
  .line 232
    const-string v0, "getNineShoot DONE"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    move-object v0, v2
    goto :L0
.end method

.method public getNineShootManager()Lcom/alipay/zoloz/toyger/upload/NineShootManager;
  .registers 2
  .prologue
  .line 238
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    return-object v0
.end method

.method public uploadBehaviourLog(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
  .registers 6
  .prologue
  .line 128
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    if-eqz v0, :L0
  .line 129
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    move-result-object v0
    invoke-direct { p0, v0, p1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    move-result-object v0
  .line 130
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v1
  .line 131
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->publicKey:Ljava/lang/String;
    invoke-virtual { v2, v0, v1, v3 }, Lcom/alipay/zoloz/toyger/upload/UploadChannel;->uploadBehaviourLog(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 133
    return-void
.end method

.method public uploadFaceInfo(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 9
  .prologue
  .line 99
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    if-eqz v0, :L0
  .line 100
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->uploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;
  .line 101
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    move-result-object v0
    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;
    invoke-direct { p0, v0, v2 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    move-result-object v2
  .line 102
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v3
  .line 104
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-virtual { v0, v4, v5 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->setUploadStartTime(J)V
  .line 106
    new-instance v4, Ljava/util/HashMap;
    invoke-direct { v4 }, Ljava/util/HashMap;-><init>()V
  .line 107
    const-string v0, "faceQuality"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v6, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    iget v6, v6, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 108
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v5, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v5 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v5, "uploadStart"
    invoke-virtual { v0, v5, v4 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 111
    const-string v0, "zolozTime"
    const-string v4, "upload face begin"
    invoke-static { v0, v4 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 112
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->publicKey:Ljava/lang/String;
    invoke-virtual { v0, v1, v2, v3, v4 }, Lcom/alipay/zoloz/toyger/upload/UploadChannel;->uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 114
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->uploadNineShoot()V
  .line 115
    return-void
.end method

.method public uploadNineShoot()V
  .registers 6
  .prologue
  .line 119
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->isNeedUpload()Z
    move-result v0
    if-eqz v0, :L0
  .line 120
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getNineShoot()Lcom/alipay/zoloz/toyger/upload/UploadContent;
    move-result-object v0
  .line 121
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    move-result-object v1
    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;
    invoke-direct { p0, v1, v2 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    move-result-object v1
  .line 122
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v2 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v2
  .line 123
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/toyger/upload/UploadChannel;
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/upload/UploadManager;->publicKey:Ljava/lang/String;
    invoke-virtual { v3, v0, v1, v2, v4 }, Lcom/alipay/zoloz/toyger/upload/UploadChannel;->uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 125
    return-void
.end method

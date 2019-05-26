.class public Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field private algorithm:Lcom/alibaba/fastjson/JSONObject;

.field private coll:Lcom/alipay/mobile/security/bio/config/bean/Coll;

.field private deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private env:I

.field private faceTips:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

.field private navi:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;

.field private sceneEnv:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

.field private ui:I

.field private upload:Lcom/alibaba/fastjson/JSONObject;

.method public constructor <init>()V
  .registers 3
  .prologue
    const/4 v1, 0
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->sceneEnv:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
  .line 17
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->navi:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
  .line 18
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/Coll;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->coll:Lcom/alipay/mobile/security/bio/config/bean/Coll;
  .line 21
    new-instance v0, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->faceTips:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
  .line 23
    new-array v0, v1, [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 25
    iput v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->env:I
  .line 26
    const/16 v0, 991
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->ui:I
    return-void
.end method

.method public getAlgorithm()Lcom/alibaba/fastjson/JSONObject;
  .registers 2
  .prologue
  .line 65
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->algorithm:Lcom/alibaba/fastjson/JSONObject;
    return-object v0
.end method

.method public getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
  .registers 2
  .prologue
  .line 49
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->coll:Lcom/alipay/mobile/security/bio/config/bean/Coll;
    return-object v0
.end method

.method public getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .registers 2
  .prologue
  .line 93
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    return-object v0
.end method

.method public getEnv()I
  .registers 2
  .prologue
  .line 73
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->env:I
    return v0
.end method

.method public getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
  .registers 2
  .prologue
  .line 85
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->faceTips:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    return-object v0
.end method

.method public getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
  .registers 2
  .prologue
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->navi:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    return-object v0
.end method

.method public getSceneEnv()Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
  .registers 2
  .prologue
  .line 33
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->sceneEnv:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
    return-object v0
.end method

.method public getUi()I
  .registers 2
  .prologue
  .line 81
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->ui:I
    return v0
.end method

.method public getUpload()Lcom/alibaba/fastjson/JSONObject;
  .registers 2
  .prologue
  .line 57
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->upload:Lcom/alibaba/fastjson/JSONObject;
    return-object v0
.end method

.method public setAlgorithm(Lcom/alibaba/fastjson/JSONObject;)V
  .registers 2
  .prologue
  .line 61
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->algorithm:Lcom/alibaba/fastjson/JSONObject;
  .line 62
    return-void
.end method

.method public setColl(Lcom/alipay/mobile/security/bio/config/bean/Coll;)V
  .registers 2
  .prologue
  .line 45
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->coll:Lcom/alipay/mobile/security/bio/config/bean/Coll;
  .line 46
    return-void
.end method

.method public setDeviceSettings([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .registers 2
  .prologue
  .line 97
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 98
    return-void
.end method

.method public setEnv(I)V
  .registers 2
  .prologue
  .line 69
    iput p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->env:I
  .line 70
    return-void
.end method

.method public setFaceTips(Lcom/alipay/mobile/security/bio/config/bean/FaceTips;)V
  .registers 2
  .prologue
  .line 89
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->faceTips:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
  .line 90
    return-void
.end method

.method public setNavi(Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;)V
  .registers 2
  .prologue
  .line 37
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->navi:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
  .line 38
    return-void
.end method

.method public setSceneEnv(Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;)V
  .registers 2
  .prologue
  .line 29
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->sceneEnv:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
  .line 30
    return-void
.end method

.method public setUi(I)V
  .registers 2
  .prologue
  .line 77
    iput p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->ui:I
  .line 78
    return-void
.end method

.method public setUpload(Lcom/alibaba/fastjson/JSONObject;)V
  .registers 2
  .prologue
  .line 53
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->upload:Lcom/alibaba/fastjson/JSONObject;
  .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 102
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "FaceRemoteConfig{sceneEnv="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->sceneEnv:Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", navi="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->navi:Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", coll="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->coll:Lcom/alipay/mobile/security/bio/config/bean/Coll;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", upload="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->upload:Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", algorithm="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->algorithm:Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", faceTips="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->faceTips:Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", deviceSettings="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->deviceSettings:[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 109
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", env="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->env:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", ui="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->ui:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 102
    return-object v0
.end method

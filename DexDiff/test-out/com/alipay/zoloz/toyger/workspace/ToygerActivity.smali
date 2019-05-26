.class public Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;
.super Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;
.implements Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
.source "SourceFile"

.field public mCameraPermission:Z

.field public mDialogTypeIndex:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;

.field public mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;

.field public mRetryTime:I

.field protected mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 48
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;-><init>()V
  .line 51
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 54
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mCameraPermission:Z
    return-void
.end method

.method private preLoadToygerAsync()V
  .registers 4
  .prologue
  .line 121
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/a;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/a;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;)V
    const-string v2, "preload_toyger"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 131
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 132
    return-void
.end method

.method private protectRemoteConfig()V
  .registers 3
  .prologue
  .line 355
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    if-nez v0, :L1
  .line 356
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 357
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    new-instance v1, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    invoke-direct { v1 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;-><init>()V
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->setFaceTips(Lcom/alipay/mobile/security/bio/config/bean/FaceTips;)V
  :L0
  .line 363
    return-void
  :L1
  .line 359
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    if-nez v0, :L0
  .line 360
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    new-instance v1, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    invoke-direct { v1 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;-><init>()V
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->setFaceTips(Lcom/alipay/mobile/security/bio/config/bean/FaceTips;)V
    goto :L0
.end method

.method private recordExtCallVerify(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .registers 6
  .prologue
  .line 341
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 342
    const-string v2, "returncode"
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, ""
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    if-eqz p1, :L1
    iget v0, p1, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
  :L0
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v1, v2, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 343
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "callbackVerifySystem"
    invoke-virtual { v0, v2, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 344
    return-void
  :L1
  .line 342
    const-string v0, ""
    goto :L0
.end method

.method private recordExtEntrySDK()V
  .registers 5
  .prologue
  .line 299
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    if-nez v0, :L1
  :L0
  .line 338
    return-void
  :L1
  .line 303
    new-instance v2, Ljava/util/HashMap;
    invoke-direct { v2 }, Ljava/util/HashMap;-><init>()V
  .line 304
    const-string v0, "sceneId"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v3 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getSceneEnv()Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->getSceneCode()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, ""
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 305
    const-string v0, "uiVersion"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v3 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getUi()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, ""
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 306
    const-string v0, "verifyId"
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v1
    const-string v3, "verifyid"
    invoke-interface { v1, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 309
    invoke-static { }, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getStaticApDidToken()Ljava/lang/String;
    move-result-object v1
  .line 310
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L3
  .line 311
    invoke-static { }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    move-result-object v0
  .line 312
    const-class v3, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
    invoke-virtual { v0, v3 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
  .line 313
    if-eqz v0, :L3
  .line 314
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getApDidToken()Ljava/lang/String;
    move-result-object v0
  :L2
  .line 317
    const-string v1, "APDIDTOKEN"
    invoke-interface { v2, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 319
    const-string v0, "TOKEN_ID"
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v1
    const-string v3, "TOKEN_ID"
    invoke-interface { v1, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 320
    const-string v0, "product"
    const-string v1, "toyger"
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 321
    const-string v0, "bioType"
    const-string v1, "facedetect"
    invoke-interface { v2, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 322
    invoke-static { p0 }, Lcom/alipay/mobile/security/bio/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 323
    const-string v1, "networkType"
    invoke-interface { v2, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 325
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v2 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->addExtProperties(Ljava/util/Map;)V
  .line 327
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 335
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "entrySDK"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 337
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual { v0, v2, v3 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->setEntrySdkTime(J)V
    goto/16 :L0
  :L3
    move-object v0, v1
    goto :L2
.end method

.method private recordExtExitSdk()V
  .registers 9
  .prologue
  .line 347
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 348
    const-string v1, "timecost"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getEntrySdkTime()J
    move-result-wide v6
    sub-long/2addr v4, v6
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 349
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    if-eqz v1, :L0
  .line 350
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "exitSDK"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  :L0
  .line 352
    return-void
.end method

.method public alert(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
  .registers 13
  .prologue
    const/4 v1, 0
  .line 163
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->isFinishing()Z
    move-result v0
    if-nez v0, :L4
  .line 166
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;-><init>(Landroid/content/Context;)V
  .line 168
    if-eqz p3, :L0
  .line 170
    invoke-virtual { v0, p3 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  :L0
  .line 173
    if-eqz p4, :L1
  .line 174
    invoke-virtual { v0, p4 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->setMessage2(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  :L1
  .line 177
    if-eqz p5, :L2
  .line 178
    invoke-virtual { v0, p5, p6 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  :L2
  .line 181
    if-eqz p7, :L3
  .line 182
    invoke-virtual { v0, p7, p8 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  :L3
  .line 189
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->showCloseButton(Z)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .line 190
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->showProtocol(Z)Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;
  .line 191
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mDialogTypeIndex:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 192
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog$Builder;->show()Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    move-result-object v0
  .line 193
    invoke-virtual { v0, p9 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->setCanceledOnTouchOutside(Z)V
  .line 194
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->setCancelable(Z)V
  .line 195
    invoke-virtual { v0, p1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->setTag(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;)V
  .line 196
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 17
    invoke-virtual { v0, v1 }, Landroid/view/Window;->setGravity(I)V
  :L4
  .line 198
    return-void
.end method

.method protected commandFinished()V
  .registers 3
  .prologue
  .line 293
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "noticeExitSDK"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 295
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->commandFinished()V
  .line 296
    return-void
.end method

.method public finish()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 287
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finish()V
  .line 288
    invoke-virtual { p0, v0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->overridePendingTransition(II)V
  .line 289
    return-void
.end method

.method public getAlertTag()Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .registers 2
  .prologue
  .line 202
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mDialogTypeIndex:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    return-object v0
.end method

.method public getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .registers 2
  .prologue
  .line 152
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    return-object v0
.end method

.method public getRetryTime()I
  .registers 2
  .prologue
  .line 229
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mRetryTime:I
    return v0
.end method

.method public getUserVerifyInfo()Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
  .registers 4
  .prologue
  .line 251
    new-instance v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;
    invoke-direct { v1 }, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;-><init>()V
  .line 252
    const-string v0, "circle"
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->actid:Ljava/lang/String;
  .line 253
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "APDID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L6
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "APDID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L0
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;
  .line 254
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "appid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L7
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "appid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L1
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;
  .line 255
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;
  .line 256
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "SCENE_ID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L8
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "SCENE_ID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L2
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->sceid:Ljava/lang/String;
  .line 257
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;
  .line 258
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "userid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L9
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "userid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L3
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;
  .line 259
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "TOKEN_ID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L10
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "TOKEN_ID"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L4
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;
  .line 260
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "verifyid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L11
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
    const-string v2, "verifyid"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  :L5
    iput-object v0, v1, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;
  .line 261
    return-object v1
  :L6
  .line 253
    const-string v0, ""
    goto/16 :L0
  :L7
  .line 254
    const-string v0, ""
    goto/16 :L1
  :L8
  .line 256
    const-string v0, ""
    goto :L2
  :L9
  .line 258
    const-string v0, ""
    goto :L3
  :L10
  .line 259
    const-string v0, ""
    goto :L4
  :L11
  .line 260
    const-string v0, ""
    goto :L5
.end method

.method public gotoSettings()V
  .registers 3
  .prologue
  .line 222
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.settings.SETTINGS"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 223
    const/high16 v1, 4096
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  .line 224
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->startActivity(Landroid/content/Intent;)V
  .line 225
    return-void
.end method

.method public haveCameraPermission()Z
  .registers 2
  .prologue
  .line 241
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mCameraPermission:Z
    return v0
.end method

.method protected hideBottomUIMenu()V
  .registers 4
  .prologue
    const/16 v2, 19
  .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 11
    if-le v0, v1, :L1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ge v0, v2, :L1
  .line 110
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
  .line 111
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
  :L0
  .line 119
    return-void
  :L1
  .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v0, v2, :L0
  .line 114
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
  .line 115
    const/16 v1, 4102
  .line 117
    invoke-virtual { v0, v1 }, Landroid/view/View;->setSystemUiVisibility(I)V
    goto :L0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L6
  .registers 5
  .prologue
  .line 58
    sget v0, Lcom/alipay/zoloz/toyger/R$style;->FaceNoAnimationTheme:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->setTheme(I)V
  .line 59
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onCreate(Landroid/os/Bundle;)V
  .line 60
    invoke-static { }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    move-result-object v0
  .line 61
    if-nez v0, :L1
  .line 64
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "null == BioServiceManager.getCurrentInstance()"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
  .line 65
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->finish()V
  :L0
  .line 102
    return-void
  :L1
  .line 69
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 70
    const/4 v0, 3
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->setVolumeControlStream(I)V
  .line 71
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 128
    invoke-virtual { v0, v1 }, Landroid/view/Window;->addFlags(I)V
  .line 72
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 1024
    invoke-virtual { v0, v1 }, Landroid/view/Window;->addFlags(I)V
  .line 73
    const-string v0, "Orange"
    const-string v1, "Cherry"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L2
  .line 74
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->hideBottomUIMenu()V
  :L2
  .line 76
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    if-eqz v0, :L4
  :L3
  .line 78
    const-string v0, "zolozTime"
    const-string v1, "parseObject"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 79
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;
    move-result-object v0
    const-class v1, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-static { v0, v1 }, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 82
    const-string v0, "zolozTime"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "parseObject end:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  :L4
  .line 89
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->recordExtEntrySDK()V
  .line 92
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    if-eqz v0, :L7
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    move-result-object v0
    if-eqz v0, :L7
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 93
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->isEnable()Z
    move-result v0
    if-eqz v0, :L7
  .line 94
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;-><init>()V
  :L5
  .line 99
    const/4 v1, 0
    invoke-virtual { p0, v1, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->forward(Landroid/os/Bundle;Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V
  .line 101
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->preLoadToygerAsync()V
    goto/16 :L0
  :L6
  .line 83
    move-exception v0
  .line 84
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
  .line 86
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->protectRemoteConfig()V
    goto :L4
  :L7
  .line 96
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;-><init>()V
    goto :L5
.end method

.method protected onDestroy()V
  .registers 2
  .prologue
  .line 266
    const-string v0, "ToygerActivity destroy!"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 267
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->recordExtExitSdk()V
  .line 268
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onDestroy()V
  .line 269
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
  .registers 5
  .prologue
  .line 207
    const/4 v0, 0
  .line 209
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    if-eqz v1, :L0
  .line 210
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    check-cast v0, Lcom/alipay/zoloz/toyger/interfaces/ToygerEvent;
    invoke-interface { v0, p1, p2 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerEvent;->ontActivityEvent(ILandroid/view/KeyEvent;)Z
    move-result v0
  :L0
  .line 213
    if-eqz v0, :L2
  .line 214
    const/4 v0, 1
  :L1
  .line 217
    return v0
  :L2
    invoke-super { p0, p1, p2 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onKeyDown(ILandroid/view/KeyEvent;)Z
    move-result v0
    goto :L1
.end method

.method protected onResume()V
  .registers 1
  .prologue
  .line 273
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onResume()V
  .line 274
    return-void
.end method

.method public onWindowFocusChanged(Z)V
  .registers 3
  .prologue
  .line 278
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    if-eqz v0, :L0
  .line 279
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mBioFragment:Lcom/alipay/mobile/security/bio/workspace/BioFragment;
    check-cast v0, Lcom/alipay/zoloz/toyger/interfaces/ToygerEvent;
    invoke-interface { v0, p1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerEvent;->onWindowFocusChanged(Z)Z
  :L0
  .line 282
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onWindowFocusChanged(Z)V
  .line 283
    return-void
.end method

.method public sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .registers 2
  .prologue
  .line 145
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->recordExtCallVerify(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 146
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 148
    return-void
.end method

.method public sendResponse(Ljava/lang/String;ILjava/lang/String;)V
  .registers 5
  .prologue
  .line 136
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V
  .line 137
    iput p2, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I
  .line 138
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->recordExtCallVerify(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 139
    invoke-super { p0, p1, p2, p3 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Ljava/lang/String;ILjava/lang/String;)V
  .line 140
    return-void
.end method

.method public setCameraPermission(Z)V
  .registers 2
  .prologue
  .line 246
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mCameraPermission:Z
  .line 247
    return-void
.end method

.method public setRetryTime(I)V
  .registers 3
  .prologue
  .line 234
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mRetryTime:I
    if-eq v0, p1, :L0
  .line 235
    iput p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerActivity;->mRetryTime:I
  :L0
  .line 237
    return-void
.end method

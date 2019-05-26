.class public Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.field private isAlertRunning:Z

.field private isAuthInBackground:Z

.field private mAlertNegative:Ljava/lang/String;

.field private mAlertPositive:Ljava/lang/String;

.field private mAlertReturnCode:I

.field private mAlertTypeHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;

.field private mRetryTime:I

.field private mScene:Ljava/lang/String;

.field private mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.field private mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.field private mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
  .registers 6
  .prologue
  .line 49
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 47
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAuthInBackground:Z
  .line 50
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 51
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 52
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
  .line 55
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
    invoke-direct { v0, p3, p1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;-><init>(Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Landroid/content/Context;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertTypeHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
  .line 56
    return-void
.end method

.method public alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  .registers 13
  .prologue
    const/4 v9, 1
  .line 69
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAuthInBackground:Z
    if-eqz v0, :L1
  :L0
  .line 105
    return-void
  :L1
  .line 73
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAlertRunning:Z
    if-nez v0, :L0
  .line 77
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
  .line 79
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->pauseToygerFaceService()V
  .line 81
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAlertRunning:Z
  .line 84
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getRetry()I
    move-result v1
    if-lt v0, v1, :L2
  .line 85
    sget-object p1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL_OVER_MAX_TIME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
  :L2
  .line 88
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertTypeHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
    invoke-virtual { v0, p1, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertContext(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;I)Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
    move-result-object v6
  .line 89
    iget-object v0, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->positive:Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
  .line 90
    iget-object v0, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->negative:Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
  .line 91
    iget-object v0, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->scene:Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
  .line 92
    iget v0, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->returnCode:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
  .line 94
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertRecord(Ljava/lang/String;)V
  .line 96
    iget-object v0, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->tag:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    sget-object v1, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_INVALID:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    if-eq v0, v1, :L0
  .line 97
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    iget-object v1, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->tag:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    iget-object v2, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->title:Ljava/lang/String;
    iget-object v3, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->msg1:Ljava/lang/String;
    iget-object v4, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->msg2:Ljava/lang/String;
    iget-object v5, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->positive:Ljava/lang/String;
    iget-object v7, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->negative:Ljava/lang/String;
    iget-boolean v10, v6, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->showIcon:Z
    move-object v6, p0
    move-object v8, p0
    invoke-interface/range { v0 .. v10 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->alert(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZ)V
  .line 100
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    if-eq p1, v0, :L0
  .line 101
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
  .line 102
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->setRetryTime(I)V
    goto :L0
.end method

.method public getAlertReturnCode(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)I
  .registers 4
  .prologue
  .line 59
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertTypeHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mRetryTime:I
    invoke-virtual { v0, p1, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertContext(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;I)Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
    move-result-object v0
  .line 60
    iget v0, v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->returnCode:I
    return v0
.end method

.method public isAlertRunning()Z
  .registers 2
  .prologue
  .line 129
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAlertRunning:Z
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
  .registers 5
  .prologue
  .line 115
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAlertTag()Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
    move-result-object v0
  .line 116
    packed-switch p2, :L3
  :L0
  .line 126
    return-void
  :L1
  .line 118
    const/4 v1, 0
    invoke-virtual { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->pressAlertButton(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Z)V
    goto :L0
  :L2
  .line 121
    const/4 v1, 1
    invoke-virtual { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->pressAlertButton(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Z)V
    goto :L0
  .line 116
  :L3
  .packed-switch -2
    :L1
    :L2
  .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .prologue
  .line 109
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->clickBackRecord()V
  .line 110
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  .line 111
    return-void
.end method

.method protected pressAlertButton(Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;Z)V
  .registers 8
  .prologue
    const/16 v4, 209
    const/16 v3, 300
  .line 133
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/alert/a;->a:[I
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->ordinal()I
    move-result v1
    aget v0, v0, v1
    packed-switch v0, :L36
  :L0
  .line 310
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAlertRunning:Z
  .line 311
    return-void
  :L1
  .line 136
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L0
  :L2
  .line 140
    if-eqz p2, :L4
  .line 141
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    if-eqz v0, :L3
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->INTERRUPT:Lcom/alipay/mobile/security/faceauth/InvokeType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->uploadBehaviourLog(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
  :L3
  .line 144
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 145
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L0
  :L4
  .line 147
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 148
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto :L0
  :L5
  .line 154
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L0
  :L6
  .line 158
    if-eqz p2, :L7
  .line 159
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 160
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto :L0
  :L7
  .line 162
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
  .line 163
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    if-eqz v0, :L0
  .line 164
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->INTERRUPT:Lcom/alipay/mobile/security/faceauth/InvokeType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->uploadBehaviourLog(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
    goto :L0
  :L8
  .line 171
    if-eqz p2, :L9
  .line 172
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->gotoSettings()V
  :L9
  .line 175
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L0
  :L10
  .line 179
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L0
  :L11
  .line 183
    if-eqz p2, :L12
  .line 184
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 185
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L12
  .line 187
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 188
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L13
  .line 193
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 194
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L14
  .line 198
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 199
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v4 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L15
  .line 202
    if-eqz p2, :L16
  .line 203
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 204
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L16
  .line 206
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 207
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L17
  .line 213
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 214
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L18
  .line 217
    if-nez p2, :L19
  .line 218
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 219
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L19
  .line 222
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 223
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L20
  .line 229
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 230
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L21
  .line 233
    if-eqz p2, :L22
  .line 235
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
    goto/16 :L0
  :L22
  .line 238
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 239
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L23
  .line 245
    if-eqz p2, :L24
  .line 246
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 247
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L24
  .line 249
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 250
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L25
  .line 255
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 256
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L26
  .line 260
    if-eqz p2, :L27
  .line 261
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 262
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L27
  .line 264
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 265
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L28
  .line 270
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 271
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L29
  .line 275
    if-eqz p2, :L30
  .line 276
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 277
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L30
  .line 279
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 280
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L31
  .line 285
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 286
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L32
  .line 289
    if-eqz p2, :L33
  .line 290
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 291
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->retry()V
    goto/16 :L0
  :L33
  .line 293
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertNegative:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 294
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertReturnCode:I
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L34
  .line 299
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mAlertPositive:Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mScene:Ljava/lang/String;
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .line 300
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v4 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  :L35
  .line 304
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    const/16 v1, 105
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto/16 :L0
  .line 133
  :L36
  .packed-switch 1
    :L1
    :L2
    :L5
    :L6
    :L8
    :L10
    :L11
    :L13
    :L14
    :L15
    :L17
    :L18
    :L20
    :L21
    :L23
    :L25
    :L26
    :L28
    :L29
    :L31
    :L32
    :L34
    :L35
  .end packed-switch
.end method

.method public setAuthInBackground(Z)V
  .registers 2
  .prologue
  .line 65
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAuthInBackground:Z
  .line 66
    return-void
.end method

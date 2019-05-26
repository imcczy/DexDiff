.class public Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
  }
.end annotation

.field faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;

.field mContext:Landroid/content/Context;

.field mResources:Landroid/content/res/Resources;

.field mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Landroid/content/Context;)V
  .registers 4
  .prologue
  .line 26
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 27
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 28
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->mContext:Landroid/content/Context;
  .line 29
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->mContext:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->mResources:Landroid/content/res/Resources;
  .line 30
    invoke-interface { p1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 31
    return-void
.end method

.method private getAlertCode(II)I
  .registers 4
  .prologue
  .line 42
    const/4 v0, -1
    if-eq p1, v0, :L1
  :L0
  .line 46
    return p1
  :L1
    move p1, p2
    goto :L0
.end method

.method private getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .prologue
  .line 34
    invoke-static { p1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 38
    return-object p2
  :L1
    move-object p2, p1
    goto :L0
.end method

.method public getAlertContext(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;I)Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "StringFormatInvalid"
    }
  .end annotation
  .registers 15
  .prologue
  .line 51
    new-instance v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
    invoke-direct { v7, p0 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;-><init>(Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;)V
  .line 52
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_INVALID:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 53
    const-string v5, ""
  .line 54
    const-string v4, ""
  .line 55
    const-string v3, ""
  .line 56
    const-string v2, ""
  .line 57
    const-string v8, ""
  .line 58
    const-string v1, ""
  .line 59
    const/4 v0, -1
  .line 60
    iget-object v9, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->mResources:Landroid/content/res/Resources;
  .line 62
    sget-object v10, Lcom/alipay/zoloz/toyger/workspace/alert/b;->a:[I
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ordinal()I
    move-result v11
    aget v10, v10, v11
    packed-switch v10, :L12
  :L0
  .line 175
    iput-object v6, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->tag:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 176
    iput-object v5, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->msg1:Ljava/lang/String;
  .line 177
    iput-object v4, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->msg2:Ljava/lang/String;
  .line 178
    iput-object v2, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->negative:Ljava/lang/String;
  .line 179
    iput-object v3, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->positive:Ljava/lang/String;
  .line 180
    iput-object v8, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->title:Ljava/lang/String;
  .line 181
    const/4 v2, 0
    iput-boolean v2, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->showIcon:Z
  .line 182
    iput-object v1, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->scene:Ljava/lang/String;
  .line 183
    iput v0, v7, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->returnCode:I
  .line 184
    return-object v7
  :L1
  .line 64
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 65
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget-object v1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 66
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 67
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_ok:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 68
    const-string v1, "loadAlgorithmErr"
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 205
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto :L0
  :L2
  .line 73
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_EXIT_FACE:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 74
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_close_title:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 75
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_close_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 76
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_sure:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 77
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_cancle:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 78
    const-string v1, "clickXback"
  .line 79
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 202
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L3
  .line 83
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 84
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_interrupt_error:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 85
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 86
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_btn_retry:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 87
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_exit:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 88
    const-string v1, "systemInterrupt"
  .line 89
    const/16 v0, 301
  .line 90
    goto/16 :L0
  :L4
  .line 93
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_TIMEOUT:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 94
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_timeout_error:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_pose_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 96
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_btn_retry:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 97
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_exit:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 98
    const-string v1, "timeout"
  .line 99
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 202
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L5
  .line 103
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 104
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_unsurpport_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 105
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 106
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_ok:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 107
    const-string v1, "errorDeviceModel"
  .line 108
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 102
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L6
  .line 112
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 113
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_camera_unconnect_title:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 114
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_camera_unconnect_text_default:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 115
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_exit:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 116
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_camera_unconnect_ok_text:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 117
    const-string v1, "cameraPermission"
  .line 118
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 100
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L7
  .line 122
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 123
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_unsurpport_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 124
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 125
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_ok:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 126
    const-string v1, "errorCameraFront"
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 101
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L8
  .line 131
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 132
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_error_version_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 133
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_error_version_msg2:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 134
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_ok:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 135
    const-string v1, "errorSystemVersion"
  .line 136
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 105
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L9
  .line 141
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_face_operation_error_text:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_pose_msg:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 144
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_btn_retry:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 145
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_exit:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 146
    const-string v1, "serverFail"
  .line 147
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 208
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L10
  .line 152
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_COMMAND_FAIL_MAX_RETRY:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 153
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_face_operation_error_text:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 154
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 155
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_ok:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 156
    const-string v1, "serverFail"
  .line 157
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 208
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  :L11
  .line 162
    sget-object v6, Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;->DIALOG_TYPE_INDEX_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;
  .line 163
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getTitle()Ljava/lang/String;
    move-result-object v0
    sget-object v1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->NETWORK_TIMEOUT:Ljava/lang/String;
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
  .line 164
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getMessage()Ljava/lang/String;
    move-result-object v0
    const-string v1, ""
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  .line 165
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getRightButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->loginment_dialog_btn_retry:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 166
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getLeftButtonText()Ljava/lang/String;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$string;->face_detect_dialog_btn_exit:I
    invoke-virtual { v9, v1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 167
    const-string v1, "networkFail"
  .line 168
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->faceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I
    move-result v0
    const/16 v9, 207
    invoke-direct { p0, v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;->getAlertCode(II)I
    move-result v0
    goto/16 :L0
  .line 62
  :L12
  .packed-switch 1
    :L1
    :L2
    :L3
    :L4
    :L5
    :L6
    :L7
    :L8
    :L9
    :L9
    :L10
    :L10
    :L11
  .end packed-switch
.end method

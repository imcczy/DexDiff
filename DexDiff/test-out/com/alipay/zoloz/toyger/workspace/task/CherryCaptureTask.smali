.class public Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
.super Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
.source "SourceFile"

.field private bottomText:Ljava/lang/String;

.field private imageIndex:I

.field private isDarkScreen:Z

.field private isShowNoFace:Z

.field private isShowProcessBar:Z

.field private mIsAuthInBackground:Z

.field private mQuality:F

.field private mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;

.field private topText:Ljava/lang/String;

.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
  .registers 8
  .prologue
    const/4 v2, 0
  .line 51
    invoke-direct { p0, p1, p2, p3, p4 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
  .line 39
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isShowNoFace:Z
  .line 41
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mQuality:F
  .line 42
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mIsAuthInBackground:Z
  .line 47
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isDarkScreen:Z
  .line 52
    const-class v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { p1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 53
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mMainHandler:Landroid/os/Handler;
  .line 54
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->isProgressbar()Z
    move-result v0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isShowProcessBar:Z
  .line 55
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getBottomText()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->bottomText:Ljava/lang/String;
  .line 56
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->topText:Ljava/lang/String;
  .line 57
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getImageIndex()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->imageIndex:I
  .line 58
    invoke-interface { p4 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v0
  .line 59
    if-eqz v0, :L1
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v1
    if-nez v1, :L1
    const-string v1, "auth_in_background"
    invoke-interface { v0, v1 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 60
    const-string v1, "auth_in_background"
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    move-result v0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mIsAuthInBackground:Z
  :L0
  .line 65
    return-void
  :L1
  .line 62
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mIsAuthInBackground:Z
    goto :L0
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)Z
  .registers 2
  .prologue
  .line 34
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isDarkScreen:Z
    return v0
.end method

.method static synthetic access$102(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;Z)Z
  .registers 2
  .prologue
  .line 34
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isShowNoFace:Z
    return p1
.end method

.method private generateBisBehavTask()V
  .registers 7
  .prologue
  .line 261
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->extInfoFormat:Ljava/lang/String;
    const/4 v2, 3
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0
    iget v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mVidcnt:I
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    const/4 v3, 1
    iget v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mEyeLeftOcclussion:I
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    const/4 v3, 2
    iget v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mEyeRightOcclussion:I
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-static { v1, v2 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;
  .line 262
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BisBehavTask:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    iget-object v1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->extInfo:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 263
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mQuality:F
    float-to-int v1, v1
    iput v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I
  .line 264
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTaskName:Ljava/lang/String;
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;
  .line 265
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    const-string v1, "0"
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;
  .line 266
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    iget-wide v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTaskEndTime:J
    iget-wide v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTaskStartTime:J
    sub-long/2addr v2, v4
    long-to-int v1, v2
    iput v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I
  .line 267
    return-void
.end method

.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
  .registers 12
  .prologue
    const-wide/16 v8, 300
    const/high16 v7, 16256
    const/16 v6, 50
    const/16 v5, 8
    const/4 v4, 1
  .line 134
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 135
    const-string v1, "TOYGER"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "CherryCaptureTask.action(): frameType = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 136
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L5
  .line 137
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWorkspaceHandler:Landroid/os/Handler;
    if-eqz v1, :L0
  .line 138
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWorkspaceHandler:Landroid/os/Handler;
    invoke-virtual { v1, v4 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L0
  .line 141
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    if-eqz v0, :L1
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mQuality:F
  :L1
  .line 145
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "FrameType.FRAME : mBestToygerFrame = toygerFrame : "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V
  .line 148
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mIsAuthInBackground:Z
    if-eqz v0, :L3
  .line 149
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->DONE:Lcom/alipay/mobile/security/bio/task/ActionType;
  :L2
  .line 245
    return-object v0
  :L3
  .line 151
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    if-eqz v0, :L4
  .line 152
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v5 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V
  .line 153
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0, v7, v6, v4 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showProcessBar(FIZ)V
  .line 154
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v5 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V
  :L4
  .line 156
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/task/a;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/task/a;-><init>(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)V
    invoke-virtual { v0, v1, v8, v9 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 183
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->DONE:Lcom/alipay/mobile/security/bio/task/ActionType;
    goto :L2
  :L5
  .line 184
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L6
  .line 185
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;
    goto :L2
  :L6
  .line 186
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->DARK:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L9
  .line 187
    iput-boolean v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isDarkScreen:Z
  .line 189
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    if-eqz v0, :L7
  .line 190
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v5 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V
  .line 191
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0, v7, v6, v4 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showProcessBar(FIZ)V
  .line 193
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/task/b;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/task/b;-><init>(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)V
    invoke-virtual { v0, v1, v8, v9 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L7
  .line 215
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWorkspaceHandler:Landroid/os/Handler;
    if-eqz v0, :L8
  .line 216
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWorkspaceHandler:Landroid/os/Handler;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  :L8
  .line 218
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;
    goto :L2
  :L9
  .line 219
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L10
  .line 228
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->hasFace:Z
    if-eqz v1, :L11
  .line 229
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->progress:F
  .line 230
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showProcessBar(F)V
  :L10
  .line 245
    invoke-super { p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
    move-result-object v0
    goto :L2
  :L11
  .line 232
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isShowNoFace:Z
    if-eqz v0, :L12
  .line 233
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;
    goto/16 :L2
  :L12
  .line 235
    iput-boolean v4, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->isShowNoFace:Z
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/task/c;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/task/c;-><init>(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)V
    const-wide/16 v2, 500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 242
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    const/4 v1, 0
    invoke-virtual { v0, v1, v6, v4 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showProcessBar(FIZ)V
    goto :L10
.end method

.method public done()I
  .registers 3
  .prologue
  .line 250
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTaskEndTime:J
  .line 251
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->generateBisBehavTask()V
  .line 252
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->done()I
    move-result v0
    return v0
.end method

.method public init()I
  .registers 5
  .prologue
    const/4 v2, 0
    const/16 v3, 8
  .line 70
    const-string v0, "cherryDetectTask"
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTaskName:Ljava/lang/String;
  .line 71
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceService:Lcom/alipay/mobile/security/faceauth/FaceService;
    if-eqz v0, :L0
  .line 72
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mFaceService:Lcom/alipay/mobile/security/faceauth/FaceService;
    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceDetectType;->BLINK:Lcom/alipay/mobile/security/faceauth/FaceDetectType;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/faceauth/FaceService;->setDetectType(Lcom/alipay/mobile/security/faceauth/FaceDetectType;)V
  :L0
  .line 74
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showProcessBar(F)V
  .line 78
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V
  .line 79
    const-string v0, "Cherry"
    const-string v1, "Cherry"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L5
  .line 81
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v3 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V
  .line 82
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mOuterRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    invoke-virtual { v0, v2 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setVisibility(I)V
  .line 83
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mOuterRoundBakProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    invoke-virtual { v0, v3 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setVisibility(I)V
  :L1
  .line 87
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    const-string v1, "#E5BA84"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setRoundColor(I)V
  .line 93
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWaveHelper:Lcom/alipay/zoloz/toyger/widget/WaveHelper;
    iget v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBorderWidth:I
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBorderColor:I
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->setBorder(II)V
  .line 94
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mWaveHelper:Lcom/alipay/zoloz/toyger/widget/WaveHelper;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->cancel()V
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    invoke-virtual { v0, v3 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 99
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTipView:Landroid/widget/TextView;
    const/4 v1, 4
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 101
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "detectCondStart"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 110
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->bottomText:Ljava/lang/String;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L2
  .line 111
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBottomText:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->bottomText:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 114
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->topText:Ljava/lang/String;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L3
  .line 115
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mTipView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->topText:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L3
  .line 118
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->imageIndex:I
    const/4 v1, 1
    if-ne v0, v1, :L4
  .line 121
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mContext:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$drawable;->face_circle_people2:I
    invoke-static { v0, v1 }, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 122
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBottomImage:Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mContext:Landroid/content/Context;
    invoke-virtual { v3 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    invoke-direct { v2, v3, v0 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L4
  .line 129
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->init()I
    move-result v0
    return v0
  :L5
  .line 85
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    const-string v1, "120S"
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setTimeOut(Ljava/lang/String;)V
    goto/16 :L1
.end method

.method public stop()V
  .registers 1
  .prologue
  .line 257
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->stop()V
  .line 258
    return-void
.end method

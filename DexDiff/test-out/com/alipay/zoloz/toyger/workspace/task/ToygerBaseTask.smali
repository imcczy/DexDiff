.class public Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
.super Ljava/lang/Object;
.implements Lcom/alipay/mobile/security/bio/task/SubTask;
.source "SourceFile"

.field protected extInfoFormat:Ljava/lang/String;

.field protected hasBeHaviorInfo:Z

.field protected mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;

.field protected mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field protected mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

.field protected mBorderColor:I

.field protected mBorderWidth:I

.field protected mBottomImage:Landroid/widget/ImageView;

.field protected mBottomText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mEyeLeftOcclussion:I

.field protected mEyeRightOcclussion:I

.field protected mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;

.field protected mFaceService:Lcom/alipay/mobile/security/faceauth/FaceService;

.field protected mInnerRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field protected mMainHandler:Landroid/os/Handler;

.field protected mOuterRoundBakProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field protected mOuterRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field protected mTaskEndTime:J

.field protected mTaskName:Ljava/lang/String;

.field protected mTaskStartTime:J

.field protected mTipView:Landroid/widget/TextView;

.field protected mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.field protected mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;

.field protected mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;

.field protected mVidcnt:I

.field protected mWaveHelper:Lcom/alipay/zoloz/toyger/widget/WaveHelper;

.field protected mWorkspaceHandler:Landroid/os/Handler;

.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
  .registers 7
  .prologue
  .line 86
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 39
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mMainHandler:Landroid/os/Handler;
  .line 42
    const-string v0, "#44FFFFFF"
    invoke-static { v0 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBorderColor:I
  .line 43
    const/16 v0, 10
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBorderWidth:I
  .line 52
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    invoke-direct { v0 }, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
  .line 53
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->hasBeHaviorInfo:Z
  .line 55
    const-string v0, "{\"actcnt\":0,\"vidcnt\":%1$d,\"EyeLeftOcclussion\":%2$d,\"EyeRightOcclussion\":%3$d}"
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->extInfoFormat:Ljava/lang/String;
  .line 57
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mVidcnt:I
  .line 87
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 88
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .line 89
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mWorkspaceHandler:Landroid/os/Handler;
  .line 90
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mMainHandler:Landroid/os/Handler;
  .line 91
    const-class v0, Lcom/alipay/mobile/security/faceauth/FaceService;
    invoke-virtual { p1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/faceauth/FaceService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mFaceService:Lcom/alipay/mobile/security/faceauth/FaceService;
  .line 92
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;
    invoke-virtual { p2 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getWaveView()Lcom/alipay/biometrics/ui/widget/WaveView;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/WaveHelper;-><init>(Lcom/alipay/biometrics/ui/widget/WaveView;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mWaveHelper:Lcom/alipay/zoloz/toyger/widget/WaveHelper;
  .line 93
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getRoundProgressBarInner()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mInnerRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 94
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mOuterRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mOuterRoundBakProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 96
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getBottomImage()Landroid/widget/ImageView;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBottomImage:Landroid/widget/ImageView;
  .line 97
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getBottomTextView()Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBottomText:Landroid/widget/TextView;
  .line 98
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mTipView:Landroid/widget/TextView;
  .line 99
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mContext:Landroid/content/Context;
  .line 100
    invoke-interface { p4 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 101
    const-class v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { p1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 102
    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
  .catch Ljava/lang/OutOfMemoryError; { :L0 .. :L1 } :L5
  .catch Ljava/lang/OutOfMemoryError; { :L2 .. :L3 } :L7
  .registers 9
  .prologue
    const/high16 v5, 16256
  .line 159
    const/high16 v0, 16576
  .line 160
    const/4 v1, 0
  :L0
  .line 162
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    int-to-float v2, v2
    div-float/2addr v2, v0
    float-to-int v2, v2
  .line 163
    invoke-virtual { p0 }, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    int-to-float v3, v3
    div-float/2addr v3, v0
    float-to-int v3, v3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;
  .line 162
    invoke-static { v2, v3, v4 }, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
  :L1
    move-result-object v1
  :L2
  .line 164
    new-instance v2, Landroid/graphics/Canvas;
    invoke-direct { v2, v1 }, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
  .line 166
    div-float v3, v5, v0
    div-float v0, v5, v0
    invoke-virtual { v2, v3, v0 }, Landroid/graphics/Canvas;->scale(FF)V
  .line 167
    new-instance v0, Landroid/graphics/Paint;
    invoke-direct { v0 }, Landroid/graphics/Paint;-><init>()V
  .line 168
    const/4 v3, 2
    invoke-virtual { v0, v3 }, Landroid/graphics/Paint;->setFlags(I)V
  .line 169
    const/4 v3, 0
    const/4 v4, 0
    invoke-virtual { v2, p0, v3, v4, v0 }, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
  .line 171
    float-to-int v0, p1
    const/4 v2, 1
    invoke-static { v1, v0, v2 }, Lcom/alipay/mobile/security/bio/utils/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
  :L3
    move-result-object v0
  :L4
  .line 178
    return-object v0
  :L5
  .line 175
    move-exception v0
    move-object v6, v0
    move-object v0, v1
    move-object v1, v6
  :L6
  .line 176
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    goto :L4
  :L7
  .line 175
    move-exception v0
    move-object v6, v0
    move-object v0, v1
    move-object v1, v6
    goto :L6
.end method

.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
  .registers 3
  .prologue
  .line 113
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;
    return-object v0
.end method

.method public destroy()V
  .registers 1
  .prologue
  .line 132
    return-void
.end method

.method public done()I
  .registers 3
  .prologue
  .line 118
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V
  .line 119
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    if-eqz v0, :L0
  .line 120
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->uploadFaceInfo(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  :L0
  .line 123
    const/4 v0, 0
    return v0
.end method

.method public getBisBehavTask()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
  .registers 2
  .prologue
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mBisBehavTask:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    return-object v0
.end method

.method public getVidcnt()I
  .registers 2
  .prologue
  .line 77
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mVidcnt:I
    return v0
.end method

.method public init()I
  .registers 3
  .prologue
  .line 106
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mTaskStartTime:J
  .line 107
    const/4 v0, 0
    return v0
.end method

.method public isHasBeHaviorInfo()Z
  .registers 2
  .prologue
  .line 73
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->hasBeHaviorInfo:Z
    return v0
.end method

.method public setUploadManager(Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
  .registers 2
  .prologue
  .line 182
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
  .line 183
    return-void
.end method

.method protected showBestFrameBlur(Landroid/graphics/Bitmap;)V
  .registers 5
  .prologue
  .line 136
    if-nez p1, :L1
  :L0
  .line 154
    return-void
  :L1
  .line 139
    const/high16 v0, 16448
    invoke-static { p1, v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 140
    invoke-virtual { p1 }, Landroid/graphics/Bitmap;->recycle()V
  .line 141
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mMainHandler:Landroid/os/Handler;
    if-eqz v1, :L0
  .line 142
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mMainHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/task/d;
    invoke-direct { v2, p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/task/d;-><init>(Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;Landroid/graphics/Bitmap;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L0
.end method

.method public stop()V
  .registers 1
  .prologue
  .line 128
    return-void
.end method

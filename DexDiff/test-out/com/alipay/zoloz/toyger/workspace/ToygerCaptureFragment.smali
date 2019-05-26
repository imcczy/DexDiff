.class public Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
.super Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;
.source "SourceFile"

.field private final static REQUEST_CAMERA:I = 1

.field private mContentView:Landroid/view/View;

.field mIsFirstResume:Z

.field private mLight:I

.field private mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.field private mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 32
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;-><init>()V
  .line 39
    const/16 v0, 255
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mLight:I
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;)I
  .registers 2
  .prologue
  .line 32
    iget v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mLight:I
    return v0
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
  .registers 9
  .prologue
    const/4 v5, 1
    const/4 v4, 0
  .line 78
    sget v0, Lcom/alipay/zoloz/toyger/R$layout;->toyger_circle_pattern_component:I
    invoke-virtual { p1, v0, p2, v4 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
  .line 79
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
    sget v1, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_pattern_component:I
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .line 80
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .line 81
    const-string v0, "Test onCreateView"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 82
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-direct { v0, v1, v2, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 84
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->isSupportPermissionDialog()Z
    move-result v0
    if-eqz v0, :L2
  .line 85
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
    move-result-object v0
    const-string v1, "android.permission.CAMERA"
    invoke-static { v0, v1 }, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :L1
  .line 88
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v4 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->setCameraPermission(Z)V
  .line 89
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v4 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
  .line 90
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->requestCameraPermission()V
  :L0
  .line 98
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->init()V
  .line 100
    return-void
  :L1
  .line 92
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v5 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
    goto :L0
  :L2
  .line 95
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v5 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
    goto :L0
.end method

.method private isSupportPermissionDialog()Z
  .registers 4
  .prologue
  .line 159
    const/4 v0, 0
  .line 161
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    if-eqz v1, :L0
  .line 162
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
  .line 164
    const/16 v2, 23
    if-lt v1, v2, :L0
  .line 165
    const/4 v0, 1
  :L0
  .line 169
    return v0
.end method

.method private recordExtDetectionEnd()V
  .registers 9
  .prologue
  .line 207
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 208
    if-eqz v0, :L0
  .line 209
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 210
    const-string v2, "timecost"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
  .line 211
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v6
    invoke-virtual { v6 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getEnterDetectionTime()J
    move-result-wide v6
    sub-long/2addr v4, v6
    invoke-virtual { v3, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
  .line 210
    invoke-interface { v1, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 212
    const-string v2, "brightness"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->getContext()Landroid/content/Context;
    move-result-object v4
    invoke-static { v4 }, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I
    move-result v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v1, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 213
    const-string v2, "EnterDetectionEnd"
    invoke-virtual { v0, v2, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  :L0
  .line 215
    return-void
.end method

.method private recordExtDetectionStart(Lcom/alibaba/fastjson/JSONObject;)V
  .registers 6
  .prologue
  .line 198
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 199
    if-eqz v0, :L0
  .line 200
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v1
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual { v1, v2, v3 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->setEnterDetectionTime(J)V
  .line 201
    invoke-static { p1 }, Lcom/alipay/zoloz/toyger/util/ObjectUtil;->objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
    move-result-object v1
  .line 202
    const-string v2, "EnterDetectionStart"
    invoke-virtual { v0, v2, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  :L0
  .line 204
    return-void
.end method

.method private requestCameraPermission()V
  .registers 5
  .prologue
    const/4 v3, 1
  .line 173
    new-array v0, v3, [Ljava/lang/String;
    const/4 v1, 0
    const-string v2, "android.permission.CAMERA"
    aput-object v2, v0, v1
    invoke-virtual { p0, v0, v3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->requestPermissions([Ljava/lang/String;I)V
  .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
  .registers 3
  .prologue
  .line 43
    invoke-super { p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->onCreate(Landroid/os/Bundle;)V
  .line 44
    const-string v0, "Fragment onCreate"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 45
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 46
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 47
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    if-eqz v0, :L0
  .line 48
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getLight()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mLight:I
  :L0
  .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .catch Ljava/lang/Throwable; { :L0 .. :L2 } :L5
  .catch Ljava/lang/Throwable; { :L3 .. :L4 } :L5
  .registers 6
  .prologue
  .line 54
    const-string v0, "Fragment onCreateView"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  :L0
  .line 57
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
    if-eqz v0, :L3
  .line 58
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/ViewGroup;
  .line 60
    if-eqz v0, :L1
  .line 61
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
    invoke-virtual { v0, v1 }, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
  :L1
  .line 67
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getAlgorithm()Lcom/alibaba/fastjson/JSONObject;
    move-result-object v0
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->recordExtDetectionStart(Lcom/alibaba/fastjson/JSONObject;)V
  :L2
  .line 74
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mContentView:Landroid/view/View;
    return-object v0
  :L3
  .line 64
    invoke-direct { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
  :L4
    goto :L1
  :L5
  .line 68
    move-exception v0
  .line 69
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
  .line 70
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->finishActivity(Z)V
  .line 71
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/16 v1, 205
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(I)V
    goto :L2
.end method

.method public onDestroy()V
  .registers 2
  .prologue
  .line 104
    const-string v0, "Fragment onDestroy"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 106
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    if-eqz v0, :L0
  .line 107
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->destroy()V
  :L0
  .line 110
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->onDestroy()V
  .line 111
    return-void
.end method

.method public onPause()V
  .registers 2
  .prologue
  .line 115
    const-string v0, "Fragment onPause"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 116
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    if-eqz v0, :L0
  .line 117
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->pause()V
  :L0
  .line 119
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->onPause()V
  .line 120
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
  .registers 7
  .prologue
    const/4 v2, 0
    const/4 v1, 1
  .line 179
    if-ne p1, v1, :L0
  .line 182
    array-length v0, p3
    if-ne v0, v1, :L1
    aget v0, p3, v2
    if-nez v0, :L1
  .line 184
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
  .line 185
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->setCameraPermission(Z)V
  .line 186
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->startTimerTask()V
  :L0
  .line 195
    return-void
  :L1
  .line 189
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
  .line 190
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v2 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->setCameraPermission(Z)V
  .line 191
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertCameraPermission()V
  .line 192
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
    goto :L0
.end method

.method public onResume()V
  .registers 3
  .prologue
  .line 124
    const-string v0, "Fragment onResume"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 126
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mIsFirstResume:Z
    if-nez v0, :L0
  .line 127
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mIsFirstResume:Z
  .line 129
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->recordExtDetectionEnd()V
  :L0
  .line 132
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    if-eqz v0, :L1
  .line 133
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->resume()V
  :L1
  .line 136
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/b;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/b;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 146
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->onResume()V
  .line 147
    return-void
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
  .registers 4
  .prologue
  .line 151
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    if-eqz v0, :L1
  .line 152
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->mToygerWorkspace:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0, p1, p2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->ontActivityEvent(ILandroid/view/KeyEvent;)Z
    move-result v0
  :L0
  .line 155
    return v0
  :L1
    invoke-super { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->ontActivityEvent(ILandroid/view/KeyEvent;)Z
    move-result v0
    goto :L0
.end method

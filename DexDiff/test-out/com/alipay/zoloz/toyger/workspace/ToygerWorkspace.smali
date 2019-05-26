.class public Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
.super Ljava/lang/Object;
.implements Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
.implements Lcom/alipay/zoloz/hardware/camera/b;
.implements Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;
  }
.end annotation

.field private static AUTH_IN_BACKGROUND_GEN_AVATAR_DELAY_TIME:I = 0

.field private static AUTH_IN_BACKGROUND_LIVENESS_FAIL_DESTROY_DELAY_TIME:I = 0

.field private static SENSOR_TIMER_INTERNAL:I = 0

.field public final static WHAT_START_UPLOAD:I = 1

.field public final static WHAT_START_UPLOAD_PAGE:I = 2

.field private isAlgorithRunning:Z

.field private isCheckedFace:Z

.field private isFirstTime:Z

.field private isPaused:Z

.field private lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.field private mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;

.field private mAlgorithAngle:I

.field private mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

.field private mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;

.field private mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;

.field private mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

.field private mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private mIsAuthInBackground:Z

.field protected mIsBeUploadPage:Z

.field private mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

.field private mSensorData:Ljava/util/Vector;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Vector",
      "<",
      "Lcom/alipay/mobile/security/bio/sensor/SensorData;",
      ">;"
    }
  .end annotation
.end field

.field private mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

.field private mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.field private mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.field private mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field private mToygerIspService:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;

.field protected mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;

.field private mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;

.field private mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;

.field private mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;

.field private mWorkspaceHandler:Landroid/os/Handler;

.field private poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;

.field private tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 113
    const/16 v0, 100
    sput v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->SENSOR_TIMER_INTERNAL:I
  .line 127
    const/16 v0, 400
    sput v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->AUTH_IN_BACKGROUND_GEN_AVATAR_DELAY_TIME:I
  .line 129
    const/16 v0, 700
    sput v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->AUTH_IN_BACKGROUND_LIVENESS_FAIL_DESTROY_DELAY_TIME:I
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
  .registers 14
  .prologue
    const/4 v1, 0
    const/4 v9, 0
  .line 135
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 102
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
  .line 103
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
  .line 104
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isCheckedFace:Z
  .line 106
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 108
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 111
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
  .line 112
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
  .line 117
    new-instance v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
  .line 122
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
  .line 124
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  .line 125
    const/16 v0, 270
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 126
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
  .line 133
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;
  .line 136
    const-string v0, "zolozTime"
    const-string v1, "smiletopay view end"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 137
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v6
  .line 138
    invoke-interface { p2 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v7
  .line 139
    new-instance v0, Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v6 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-direct { v0, v7, v1 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;-><init>(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;Landroid/content/res/Resources;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
  .line 140
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 141
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;
    move-result-object v8
  .line 143
    if-eqz v8, :L5
    invoke-interface { v8 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-nez v0, :L5
    const-string v0, "auth_in_background"
    invoke-interface { v8, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
  .line 144
    const-string v0, "auth_in_background"
    invoke-interface { v8, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    move-result v0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
  :L0
  .line 149
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .line 150
    invoke-static { v6 }, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->isDebug(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :L1
  .line 151
    const-string v0, "Cherry"
    const-string v1, "Cherry"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L6
  .line 152
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getAlgorithmInfoPattern()Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
    move-result-object v0
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;->setVisibility(I)V
  :L1
  .line 158
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 159
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
  .line 160
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
    invoke-virtual { v0, p0 }, Lcom/alipay/mobile/security/bio/service/BioUploadService;->addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V
  .line 162
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerIspService:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
  .line 164
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
  .line 165
    new-instance v0, Lcom/alipay/zoloz/toyger/upload/UploadManager;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-direct { v0, p0, v1, v2 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
  .line 166
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    iget-object v5, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;Landroid/os/Handler;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
  .line 169
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    invoke-direct { v0, v6, p0, p2, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;-><init>(Landroid/content/Context;Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;Lcom/alipay/zoloz/toyger/upload/UploadManager;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
  .line 170
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    invoke-virtual { v0, v9 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->setAuthInBackground(Z)V
  .line 172
    new-instance v5, Ljava/util/HashMap;
    invoke-direct { v5 }, Ljava/util/HashMap;-><init>()V
  .line 173
    const-string v0, "pubkey"
    invoke-static { v6, v7 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getPublicKey(Landroid/content/Context;Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v5, v0, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 174
    if-eqz v8, :L2
    invoke-interface { v8 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-nez v0, :L2
    const-string v0, "meta_serializer"
    invoke-interface { v8, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 175
    const-string v0, "meta_serializer"
    const-string v1, "meta_serializer"
    invoke-interface { v8, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v5, v0, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 179
    invoke-static { }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "AstraPro"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L3
  .line 181
    const-string v0, "is_mirror"
    const/4 v1, 1
    invoke-static { v1 }, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v5, v0, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 184
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
  .line 185
    invoke-virtual { v7 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getAlgorithm()Lcom/alibaba/fastjson/JSONObject;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v7 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getUpload()Lcom/alibaba/fastjson/JSONObject;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;
    move-result-object v4
    move-object v1, v6
    move-object v2, p0
  .line 184
    invoke-virtual/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    move-result v0
  .line 186
    if-nez v0, :L7
  .line 187
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  :L4
  .line 200
    return-void
  :L5
  .line 146
    iput-boolean v9, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    goto/16 :L0
  :L6
  .line 154
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getAlgorithmInfoPattern()Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
    move-result-object v0
    invoke-virtual { v0, v9 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;->setVisibility(I)V
    goto/16 :L1
  :L7
  .line 190
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V
  .line 194
    const-string v0, "zolozTime"
    const-string v1, "camera call"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 195
    invoke-static { v6 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/c;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
  .line 196
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getCameraSurfaceView()Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    move-result-object v0
    invoke-virtual { v0, p0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setCameraCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  .line 197
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0, p0 }, Lcom/alipay/zoloz/hardware/camera/c;->setCallback(Lcom/alipay/zoloz/hardware/camera/b;)V
  .line 198
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 199
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->initRotation()V
    goto :L4
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/upload/UploadManager;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Z
  .registers 2
  .prologue
  .line 91
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isFirstTime:Z
    return v0
.end method

.method static synthetic access$1102(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Z)Z
  .registers 2
  .prologue
  .line 91
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isFirstTime:Z
    return p1
.end method

.method static synthetic access$1200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 2
  .prologue
  .line 91
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->recordSlice(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Ljava/util/Vector;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;
  .registers 3
  .prologue
  .line 91
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->faceAttrToAlgAttr(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;
    move-result-object v0
    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    return-object v0
.end method

.method static synthetic access$500()I
  .registers 1
  .prologue
  .line 91
    sget v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->AUTH_IN_BACKGROUND_GEN_AVATAR_DELAY_TIME:I
    return v0
.end method

.method static synthetic access$600(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;)Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .registers 2
  .prologue
  .line 91
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    return-object v0
.end method

.method private checkEnv()V
  .registers 3
  .prologue
  .line 892
    new-instance v0, Lcom/alipay/zoloz/toyger/util/EnvCheck;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/util/EnvCheck;-><init>()V
  .line 893
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/EnvCheck;->check()Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    move-result-object v0
  .line 895
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    if-ne v0, v1, :L1
  :L0
  .line 922
    return-void
  :L1
  .line 900
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    if-ne v0, v1, :L2
  .line 901
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
  :L2
  .line 906
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    if-ne v0, v1, :L3
  .line 907
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
  :L3
  .line 912
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    if-ne v0, v1, :L4
  .line 913
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
  :L4
  .line 918
    sget-object v1, Lcom/alipay/zoloz/toyger/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/util/EnvErrorType;
    if-ne v0, v1, :L0
  .line 919
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
.end method

.method private faceAttrToAlgAttr(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;
  .registers 4
  .prologue
  .line 325
    new-instance v0, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;
    invoke-direct { v0 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;-><init>()V
  .line 326
    if-eqz p1, :L0
  .line 327
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->brightness:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setBrightness(F)V
  .line 328
    iget-boolean v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->hasFace:Z
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setHasFace(Z)V
  .line 329
    iget-boolean v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->eyeBlink:Z
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setEyeBlink(Z)V
  .line 330
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setFaceRegion(Landroid/graphics/RectF;)V
  .line 331
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setQuality(F)V
  .line 332
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->yaw:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setYaw(F)V
  .line 333
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->pitch:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setPitch(F)V
  .line 334
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->gaussian:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setGaussian(F)V
  .line 335
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->integrity:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setIntegrity(F)V
  .line 336
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->leftEyeBlinkRatio:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setLeftEyeBlinkRatio(F)V
  .line 337
    iget v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->rightEyeBlinkRatio:F
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setRightEyeBlinkRatio(F)V
  .line 338
    iget-short v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->distance:S
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;->setDistance(S)V
  :L0
  .line 341
    return-object v0
.end method

.method private initRotation()V
  .registers 5
  .prologue
  .line 203
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    move-result-object v0
  .line 204
    if-eqz v0, :L2
    array-length v1, v0
    if-lez v1, :L2
  .line 205
    const/4 v1, 0
    aget-object v0, v0, v1
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
  :L0
  .line 210
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getCameraViewRotation()I
    move-result v0
  .line 211
    rsub-int v1, v0, 360
    rem-int/lit16 v1, v1, 360
  .line 212
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v2 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z
    move-result v2
    if-eqz v2, :L3
  .line 213
    iput v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 214
    const-string v1, "Toyger"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onSurfaceChanged() : mAlgorithAngle="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", mCameraInterface.getCameraViewRotation()="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  :L1
  .line 221
    return-void
  :L2
  .line 207
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    goto :L0
  :L3
  .line 218
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 219
    const-string v0, "Toyger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onSurfaceChanged() : mAlgorithAngle="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    goto :L1
.end method

.method private jsonObjectToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alibaba/fastjson/JSONObject;",
      ")",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .registers 6
  .prologue
  .line 1241
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 1242
    if-eqz p1, :L1
    invoke-virtual { p1 }, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    move-result v0
    if-nez v0, :L1
  .line 1243
    invoke-virtual { p1 }, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L0
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 1244
    invoke-virtual { p1, v0 }, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v1, v0, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L1
  .line 1247
    return-object v1
.end method

.method private recordAlgorithmAction(Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 982
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 983
    const-string v1, "action"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 984
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "Algorithm"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 985
    return-void
.end method

.method private recordAlgorithmAction(Ljava/lang/String;J)V
  .registers 8
  .prologue
  .line 988
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 989
    const-string v1, "action"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 990
    const-string v1, "inttime"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p2, p3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 991
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "Algorithm"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 992
    return-void
.end method

.method private recordSlice(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 5
  .prologue
  .line 1207
    invoke-static { p1 }, Lcom/alipay/zoloz/toyger/util/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)Ljava/util/Map;
    move-result-object v0
  .line 1208
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "faceSlice"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 1209
    return-void
.end method

.method private sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/mobile/security/bio/task/ActionFrame",
      "<",
      "Lcom/alipay/zoloz/toyger/bean/ToygerFrame;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 224
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    if-eqz v0, :L0
  .line 226
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ToygerWorkspace.sendActionFrame() : "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 228
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/d;
    invoke-direct { v1, p0, p1 }, Lcom/alipay/zoloz/toyger/workspace/d;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L0
  .line 235
    return-void
.end method

.method private showLastFrame()V
  .registers 5
  .prologue
  .line 955
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;
    if-nez v0, :L1
  :L0
  .line 979
    return-void
  :L1
  .line 958
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/camera/a;->a()Ljava/nio/ByteBuffer;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v0
  .line 960
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v2, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v3, v3, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 961
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    int-to-float v1, v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/RotateBitmapHelper;->getVerticalRotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 962
    invoke-virtual { v0 }, Landroid/graphics/Bitmap;->recycle()V
  .line 963
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    if-eqz v0, :L0
  .line 964
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/l;
    invoke-direct { v2, p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/l;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;)V
    invoke-virtual { v0, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L0
.end method

.method public alertCameraPermission()V
  .registers 3
  .prologue
  .line 460
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  .line 461
    return-void
.end method

.method public alertClickRecord(Ljava/lang/String;Ljava/lang/String;)V
  .registers 6
  .prologue
  .line 1018
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 1020
    const-string v1, "reason"
    invoke-interface { v0, v1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 1021
    const-string v1, "choose"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 1022
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "AlertChoose"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 1023
    return-void
.end method

.method public alertRecord(Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 1000
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 1001
    const-string v1, "reason"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 1002
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "AlertAppear"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 1003
    return-void
.end method

.method public clickBackRecord()V
  .registers 3
  .prologue
  .line 1009
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "clickback"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 1010
    return-void
.end method

.method public destroy()V
  .registers 4
  .prologue
    const/4 v2, 0
  .line 379
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerWorkspace.destroy(), mWorkState="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
  .line 381
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->release()V
  .line 382
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
  .line 386
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v0, :L1
  .line 387
    const-string v0, "Android"
    invoke-static { }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraName()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L5
  .line 388
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->closeCamera()V
  :L0
  .line 392
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
  :L1
  .line 397
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
  .line 398
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    if-eqz v0, :L2
  .line 399
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->pause()V
  .line 400
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->destroy()V
  .line 401
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
  :L2
  .line 404
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
  .line 405
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  .line 407
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    if-eqz v0, :L3
  .line 408
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->destroy()V
  .line 409
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
  :L3
  .line 412
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
  .line 414
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    if-eqz v0, :L4
  .line 415
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->destroy()V
  .line 416
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
  :L4
  .line 419
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;
  .line 420
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
  .line 421
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 422
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 423
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;
  .line 424
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
  .line 426
    iput-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
  .line 427
    return-void
  :L5
  .line 390
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->stopCamera()V
    goto :L0
.end method

.method public getToygerFaceService()Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
  .registers 2
  .prologue
  .line 1251
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    return-object v0
.end method

.method public init()V
  .registers 2
  .prologue
  .line 319
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->checkEnv()V
  .line 320
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->startTimerTask()V
  .line 321
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->resetTask()V
  .line 322
    return-void
.end method

.method public onAlignDepthPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
  .registers 9
  .prologue
  .line 843
    new-instance v0, Landroid/graphics/PointF;
    iget v1, p1, Landroid/graphics/PointF;->x:F
    iget v2, p1, Landroid/graphics/PointF;->y:F
    invoke-direct { v0, v1, v2 }, Landroid/graphics/PointF;-><init>(FF)V
  .line 844
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    if-eqz v1, :L0
  .line 845
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v1 }, Lcom/alipay/zoloz/hardware/camera/c;->getColorWidth()I
    move-result v1
  .line 846
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v2 }, Lcom/alipay/zoloz/hardware/camera/c;->getColorHeight()I
    move-result v2
  .line 847
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v3 }, Lcom/alipay/zoloz/hardware/camera/c;->getDepthWidth()I
    move-result v3
  .line 848
    iget-object v4, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v4 }, Lcom/alipay/zoloz/hardware/camera/c;->getDepthHeight()I
    move-result v4
  .line 850
    new-instance v5, Landroid/graphics/PointF;
    invoke-direct { v5 }, Landroid/graphics/PointF;-><init>()V
  .line 851
    iget v6, p1, Landroid/graphics/PointF;->x:F
    int-to-float v1, v1
    mul-float/2addr v1, v6
    iput v1, v5, Landroid/graphics/PointF;->x:F
  .line 852
    iget v1, p1, Landroid/graphics/PointF;->y:F
    int-to-float v2, v2
    mul-float/2addr v1, v2
    iput v1, v5, Landroid/graphics/PointF;->y:F
  .line 854
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v1, v5 }, Lcom/alipay/zoloz/hardware/camera/c;->colorToDepth(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    move-result-object v1
  .line 855
    iget v2, v1, Landroid/graphics/PointF;->x:F
    int-to-float v3, v3
    div-float/2addr v2, v3
    iput v2, v0, Landroid/graphics/PointF;->x:F
  .line 856
    iget v1, v1, Landroid/graphics/PointF;->y:F
    int-to-float v2, v4
    div-float/2addr v1, v2
    iput v1, v0, Landroid/graphics/PointF;->y:F
  :L0
  .line 858
    return-object v0
.end method

.method public onComplete(I[B[BZ)Z
  .registers 13
  .prologue
  .line 682
    const-string v0, "zolozTime"
    const-string v1, "liveness end!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 683
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
  .line 685
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_COMPLETED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 687
    const-string v1, "TOYGER"
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onComplete(result="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ", content="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    if-nez p2, :L2
    const-string v0, "***"
  :L0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ", key="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    if-nez p3, :L3
    const-string v0, "***"
  :L1
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ", isUTF8="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, ")"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v1, v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 692
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/util/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Ljava/util/Map;
    move-result-object v0
  .line 693
    const-string v1, "bis_action"
    const-string v2, "live_body_end"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 694
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
  .line 695
    const-string v1, "timecost"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v5
    invoke-virtual { v5 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getLivebodyStartTime()J
    move-result-wide v6
    sub-long/2addr v2, v6
    invoke-virtual { v4, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 696
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "livebodyEnd"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 698
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/util/ObjectUtil;->objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
    move-result-object v0
  .line 699
    const-string v1, "result"
    const-string v2, "true"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 700
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "imageCaptureEnd"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 702
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 703
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 704
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 705
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
  .line 706
    new-instance v1, Lcom/alipay/zoloz/toyger/upload/UploadContent;
    invoke-direct { v1, p2, p3, p4 }, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->uploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;
  .line 707
    new-instance v1, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v1, v0 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 708
    const/4 v0, 1
    return v0
  :L2
  .line 687
    const-string v0, "null"
    goto/16 :L0
  :L3
    const-string v0, "null"
    goto/16 :L1
.end method

.method public onDoAction(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .registers 6
  .prologue
  .line 238
    invoke-virtual { p1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;->getObject()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 240
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->CAMERA:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L1
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    if-eqz v1, :L1
  .line 241
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mUploadManager:Lcom/alipay/zoloz/toyger/upload/UploadManager;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/upload/UploadManager;->getNineShootManager()Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    move-result-object v1
  .line 242
    if-eqz v1, :L0
  .line 243
    invoke-virtual { v1, v0 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->shootToygerFrame(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  :L0
  .line 316
    return-void
  :L1
  .line 248
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    if-eqz v1, :L2
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->isAlertRunning()Z
    move-result v1
    if-nez v1, :L4
  :L2
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-eqz v1, :L3
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v1, :L4
  :L3
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    if-eqz v1, :L5
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  .line 250
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->isTimeOut()Z
    move-result v1
    if-eqz v1, :L5
  :L4
  .line 251
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerWorkspace.onDoAction() return. => isPaused="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", mIsProgressCallback="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    goto :L0
  :L5
  .line 256
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L9
  .line 257
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/ToygerError;->CAMERA_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    if-ne v1, v2, :L6
  .line 258
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
  :L6
  .line 259
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/ToygerError;->ALGORITHM_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    if-ne v1, v2, :L7
  .line 260
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L0
  :L7
  .line 261
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/ToygerError;->LIVENESS_FAIL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    if-ne v0, v1, :L0
  .line 262
    const-string v0, "zolozTime"
    const-string v1, "liveness fail!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 263
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/f;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/f;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
    const-string v2, "uploadBehaviourLog"
    invoke-direct { v0, v1, v2 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 274
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 277
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v0, :L8
  .line 278
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/g;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/g;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
    sget v2, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->AUTH_IN_BACKGROUND_LIVENESS_FAIL_DESTROY_DELAY_TIME:I
    int-to-long v2, v2
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto/16 :L0
  :L8
  .line 286
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto/16 :L0
  :L9
  .line 292
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    if-eqz v1, :L11
  .line 293
    const-string v1, "TOYGER"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ToygerTaskManager.action() : "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 294
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    invoke-virtual { v1, p1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 296
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-eq v1, v2, :L10
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-ne v1, v2, :L11
  :L10
  .line 297
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  :L11
  .line 302
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-nez v1, :L0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    if-eqz v1, :L0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/DeviceUtil;->isDebug(Landroid/content/Context;)Z
    move-result v1
    if-eqz v1, :L0
    if-eqz v0, :L0
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->COMPLETED:Lcom/alipay/zoloz/toyger/bean/FrameType;
    if-eq v1, v2, :L0
  .line 305
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/h;
    invoke-direct { v2, p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/h;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto/16 :L0
.end method

.method public onError(I)V
  .registers 5
  .prologue
  .line 501
    new-instance v0, Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ICameraCallback.onError(error="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ")"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
  .line 502
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->haveCameraPermission()Z
    move-result v0
    if-eqz v0, :L0
  .line 503
    packed-switch p1, :L3
  :L0
  .line 524
    return-void
  :L1
  .line 509
    const/16 v0, 200
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
  .line 510
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static { v0 }, Landroid/os/Process;->killProcess(I)V
    goto :L0
  :L2
  .line 515
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->alertCameraPermission()V
    goto :L0
  .line 503
  :L3
  .packed-switch -1
    :L2
    :L0
    :L1
    :L1
    :L1
  .end packed-switch
.end method

.method public onEvent(ILjava/util/Map;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
  .registers 6
  .prologue
    const/4 v0, 1
  .line 806
    packed-switch p1, :L4
  .line 835
    const/4 v0, 0
  :L0
  .line 838
    return v0
  :L1
  .line 808
    new-instance v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 809
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->DARK:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 810
    new-instance v2, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v2, v1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 813
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING_DARK:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    goto :L0
  :L2
  .line 817
    new-instance v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 818
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 819
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/ToygerError;->ALGORITHM_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 820
    new-instance v2, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v2, v1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 822
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FAILED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    goto :L0
  :L3
  .line 826
    new-instance v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 827
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/FrameType;->ERROR:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 828
    sget-object v2, Lcom/alipay/zoloz/toyger/bean/ToygerError;->LIVENESS_FAIL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 829
    new-instance v2, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v2, v1 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 831
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FAILED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    goto :L0
  .line 806
  :L4
  .packed-switch -3
    :L3
    :L2
    :L1
  .end packed-switch
.end method

.method public bridge synthetic onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/ToygerAttr;)Z
  .registers 4
  .prologue
  .line 91
    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Z
    move-result v0
    return v0
.end method

.method public onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Z
  .registers 7
  .prologue
  .line 713
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURED:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 714
    const-string v0, "TOYGER"
    const-string v1, "mWorkState = FACE_CAPTURED"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 716
    const-string v0, "zolozTime"
    const-string v1, "scan face end!"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 717
    if-eqz p1, :L0
  .line 719
    const/high16 v0, 16448
    invoke-static { p1, v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    move-result-object v0
  .line 720
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    if-eqz v1, :L0
  .line 721
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/j;
    invoke-direct { v2, p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/j;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  :L0
  .line 740
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    if-eqz v0, :L1
  .line 741
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->setAuthInBackground(Z)V
  :L1
  .line 744
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "poseEnd"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 746
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V
  .line 747
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v1
    iput-object v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;
  .line 749
    const-string v1, "ToygerWorkspace"
    const-string v2, "mToygerCallback.sendProgressResponse()"
    invoke-static { v1, v2 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 750
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1, v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendProgressResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 752
    new-instance v1, Ljava/lang/Thread;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/k;
    invoke-direct { v2, p0, p1, p2, v0 }, Lcom/alipay/zoloz/toyger/workspace/k;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
    const-string v0, "gen_avatar"
    invoke-direct { v1, v2, v0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 767
    invoke-virtual { v1 }, Ljava/lang/Thread;->start()V
  .line 769
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
  .line 772
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "livebodyStart"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 773
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v0
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-virtual { v0, v2, v3 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->setLivebodyStartTime(J)V
  .line 775
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "uploadAvarriable"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 777
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 778
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->FRAME:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 779
    iput-object p2, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
  .line 780
    new-instance v1, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v1, v0 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 782
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v0, :L2
  .line 783
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
  :L2
  .line 786
    const/4 v0, 1
    return v0
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/a;)V
  .catch Ljava/lang/Exception; { :L4 .. :L8 } :L9
  .catch Ljava/lang/Exception; { :L12 .. :L13 } :L9
  .registers 11
  .prologue
    const/4 v7, 0
    const/4 v8, 1
    const/4 v6, 0
  .line 530
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->tempCameraData:Lcom/alipay/zoloz/hardware/camera/a;
  .line 531
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerIspService:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->isInitialized()Z
    move-result v0
    if-nez v0, :L0
  .line 532
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerIspService:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->b()I
    move-result v1
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->c()I
    move-result v2
  .line 533
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->h()I
    move-result v3
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->i()I
    move-result v4
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->d()I
    move-result v5
  .line 532
    invoke-virtual/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->init(IIIII)V
  :L0
  .line 536
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    if-eq v0, v1, :L1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING_DARK:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    if-ne v0, v1, :L2
  :L1
  .line 537
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
    if-eqz v0, :L3
  .line 538
    const-string v0, "Toyger"
    const-string v1, "Lost Frame => isAlgorithRunning = true"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V
  :L2
  .line 577
    return-void
  :L3
  .line 541
    const/4 v0, 1
  :L4
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
  .line 543
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    if-ne v0, v1, :L10
  :L5
  .line 544
    const-string v0, "Toyger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "mToygerFaceService.processImage(cameraData, type="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", mAlgorithAngle="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ")"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V
  .line 547
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->a()Ljava/nio/ByteBuffer;
    move-result-object v1
  .line 548
    if-eqz v1, :L15
  .line 549
    new-instance v8, Ljava/util/ArrayList;
    invoke-direct { v8 }, Ljava/util/ArrayList;-><init>()V
  .line 551
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->b()I
    move-result v2
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->c()I
    move-result v3
    iget v4, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 552
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->d()I
    move-result v5
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;-><init>(Ljava/nio/ByteBuffer;IIIII)V
  .line 553
    invoke-virtual { v8, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    move-object v1, v8
  :L6
  .line 557
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->e()Ljava/nio/ShortBuffer;
    move-result-object v2
  .line 558
    if-eqz v2, :L14
  .line 559
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->f()I
    move-result v3
    invoke-virtual { p1 }, Lcom/alipay/zoloz/hardware/camera/a;->g()I
    move-result v4
    iget v5, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-direct { v0, v2, v3, v4, v5 }, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;-><init>(Ljava/nio/ShortBuffer;III)V
  :L7
  .line 562
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-virtual { v2, v1, v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)Z
    move-result v0
  .line 563
    if-eqz v0, :L11
  .line 564
    if-eqz v1, :L2
    invoke-virtual { v1 }, Ljava/util/ArrayList;->size()I
    move-result v0
    if-lez v0, :L2
  .line 565
    const/4 v0, 0
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->onProcessOneImageFinish(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Z
  :L8
    goto/16 :L2
  :L9
  .line 572
    move-exception v0
  .line 573
    const-string v1, "Toyger"
    invoke-static { v1, v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto/16 :L2
  :L10
    move v6, v8
  .line 543
    goto/16 :L5
  :L11
  .line 568
    const/4 v0, 0
  :L12
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
  .line 569
    const-string v0, "Toyger"
    const-string v1, "Lost Frame => PreviewDataQueue.offer() = false"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V
  :L13
    goto/16 :L2
  :L14
    move-object v0, v7
    goto :L7
  :L15
    move-object v1, v7
    goto :L6
.end method

.method public onProcessOneImageFinish(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Z
  .registers 4
  .prologue
  .line 670
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
  .line 671
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->lastFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 673
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 674
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->CAMERA:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 675
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 676
    new-instance v1, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v1, v0 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 677
    const/4 v0, 1
    return v0
.end method

.method public onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z
  .registers 13
  .prologue
    const/16 v10, 1001
    const/4 v1, 1
    const/4 v2, 0
  .line 581
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "ToygerWorkspace.onResponse() : "
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 582
    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
  .line 584
    new-instance v4, Ljava/util/HashMap;
    invoke-direct { v4 }, Ljava/util/HashMap;-><init>()V
  .line 585
    const-string v0, "serverReturnCode"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget v6, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 586
    const-string v0, "code"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 587
    const-string v0, "productRetCode"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget v6, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 588
    const-string v0, "validationRetCode"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget v6, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 589
    const-string v0, "hasNext"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget-boolean v6, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 590
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;
    if-eqz v0, :L0
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 591
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;
    invoke-interface { v4, v0 }, Ljava/util/Map;->putAll(Ljava/util/Map;)V
  :L0
  .line 593
    const-string v5, "networkResult"
    if-ne v3, v10, :L4
    const-string v0, "yes"
  :L1
    invoke-interface { v4, v5, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 594
    const-string v0, "timecost"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    invoke-static { }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getInstance()Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;
    move-result-object v8
    invoke-virtual { v8 }, Lcom/alipay/zoloz/toyger/extservice/record/TimeRecord;->getUploadStartTime()J
    move-result-wide v8
    sub-long/2addr v6, v8
    invoke-virtual { v5, v6, v7 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ""
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v4, v0, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 595
    const-string v0, "avatar"
    invoke-interface { v4, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 596
    const-string v0, "avatar"
    invoke-interface { v4, v0 }, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 598
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v5, "uploadEnd"
    invoke-virtual { v0, v5, v4 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 600
    sparse-switch v3, :L14
  .line 639
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    if-eqz v0, :L3
  .line 640
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v0, :L12
  .line 641
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->getAlertReturnCode(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
  :L3
  .line 666
    return v2
  :L4
  .line 593
    const-string v0, "no"
    goto :L1
  :L5
  .line 604
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    if-eqz v0, :L3
  .line 605
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v0, :L6
  .line 606
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->getAlertReturnCode(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L3
  :L6
  .line 607
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-nez v0, :L3
  .line 608
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L3
  :L7
  .line 614
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    if-eqz v0, :L3
  .line 615
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-eqz v0, :L8
  .line 616
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->getAlertReturnCode(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)I
    move-result v0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->responseWithCode(I)V
    goto :L3
  :L8
  .line 617
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-nez v0, :L3
  .line 618
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL_RETRY:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto :L3
  :L9
  .line 624
    new-instance v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-direct { v3 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V
  .line 625
    iget v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    if-ne v0, v10, :L11
    move v0, v1
  :L10
    iput-boolean v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z
  .line 626
    iget v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    iput v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->suggest:I
  .line 627
    const/16 v0, 500
    iput v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I
  .line 628
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;
    iput-object v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;
  .line 629
    iget-object v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;
    const-string v4, "upload_response"
    invoke-static { p1 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v5
    invoke-interface { v0, v4, v5 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 630
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    if-eqz v0, :L3
  .line 631
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v0
    iput-object v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;
  .line 632
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v3 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 633
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->finishActivity(Z)V
    goto/16 :L3
  :L11
    move v0, v2
  .line 625
    goto :L10
  :L12
  .line 642
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-nez v0, :L3
  .line 644
    const-string v0, "Orange"
    const-string v3, "Cherry"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L13
  .line 645
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
    goto/16 :L3
  :L13
  .line 647
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    invoke-direct { v0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V
  .line 648
    iput-boolean v2, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z
  .line 649
    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    iput v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->suggest:I
  .line 650
    const/16 v3, 208
    iput v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I
  .line 651
    iget-object v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;
    iput-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;
  .line 652
    iget-object v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;
    iput-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;
  .line 653
    iget-object v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;
    iput-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;
  .line 654
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    if-eqz v3, :L3
  .line 655
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v3 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    move-result-object v3
    invoke-virtual { v3 }, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;
    move-result-object v3
    iput-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;
  .line 656
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v3, v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V
  .line 657
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->finishActivity(Z)V
    goto/16 :L3
  .line 600
  :L14
  .sparse-switch
    1001 -> :L9
    2002 -> :L7
    3001 -> :L5
    3002 -> :L5
  .end sparse-switch
.end method

.method public bridge synthetic onStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;Ljava/util/Map;)Z
  .registers 5
  .prologue
  .line 91
    check-cast p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;
    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { p0, p1, p2, p3 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->onStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/util/Map;)Z
    move-result v0
    return v0
.end method

.method public onStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/util/Map;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/toyger/face/ToygerFaceState;",
      "Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
  .registers 7
  .prologue
  .line 791
    const-string v0, "toyger_frame"
    invoke-interface { p3, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 792
    const-string v1, "toyger_depth_frame"
    invoke-interface { p3, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
  .line 793
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerIspService:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    invoke-virtual { v2, v0, v1, p1, p2 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->adjustIsp(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V
  .line 795
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;-><init>()V
  .line 796
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/FrameType;->STATE:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 797
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
  .line 798
    iput-object p2, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
  .line 799
    new-instance v1, Lcom/alipay/mobile/security/bio/task/ActionFrame;
    invoke-direct { v1, v0 }, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V
    invoke-direct { p0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->sendActionFrame(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V
  .line 800
    const/4 v0, 1
    return v0
.end method

.method public onSurfaceChanged(DD)V
  .registers 14
  .prologue
  .line 473
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->getCameraViewRotation()I
    move-result v6
  .line 474
    rsub-int v0, v6, 360
    rem-int/lit16 v7, v0, 360
  .line 476
    iget-object v8, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkspaceHandler:Landroid/os/Handler;
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/i;
    move-object v1, p0
    move-wide v2, p1
    move-wide v4, p3
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/zoloz/toyger/workspace/i;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;DD)V
    invoke-virtual { v8, v0 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 483
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z
    move-result v0
    if-eqz v0, :L1
  .line 484
    iput v7, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 485
    const-string v0, "Toyger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onSurfaceChanged() : mAlgorithAngle="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", mCameraInterface.getCameraViewRotation()="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  :L0
  .line 492
    return-void
  :L1
  .line 489
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
  .line 490
    const-string v0, "Toyger"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onSurfaceChanged() : mAlgorithAngle="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlgorithAngle:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    goto :L0
.end method

.method public onSurfaceCreated()V
  .registers 3
  .prologue
  .line 465
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 466
    const-string v0, "Toyger"
    const-string v1, "onSurfaceCreated()"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 468
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "imageCaptureStart"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 469
    return-void
.end method

.method public onSurfaceDestroyed()V
  .registers 3
  .prologue
  .line 496
    const-string v0, "Toyger"
    const-string v1, "onSurfaceDestroyed()"
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 497
    return-void
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
  .registers 5
  .prologue
  .line 935
    const/4 v0, 4
    if-ne p1, v0, :L2
  .line 936
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
    if-nez v0, :L0
  .line 937
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_BACK:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  :L0
  .line 940
    const/4 v0, 1
  :L1
  .line 943
    return v0
  :L2
    const/4 v0, 0
    goto :L1
.end method

.method public pause()V
  .registers 2
  .prologue
  .line 361
    const-string v0, "ToygerWorkspace.pause()"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
  .line 363
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->haveCameraPermission()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 376
    return-void
  :L1
  .line 367
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsAuthInBackground:Z
    if-nez v0, :L2
  .line 368
    const/4 v0, 0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
  :L2
  .line 371
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
    if-nez v0, :L3
  .line 372
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
  :L3
  .line 375
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
    goto :L0
.end method

.method public pauseToygerFaceService()V
  .registers 2
  .prologue
  .line 950
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->PAUSE:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 951
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->showLastFrame()V
  .line 952
    return-void
.end method

.method public responseWithCode(I)V
  .registers 5
  .prologue
  .line 925
    const-string v0, "ToygerWorkspace"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "responseWithCode(error="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ")"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;)V
  .line 926
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    if-eqz v0, :L0
  .line 927
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/util/ObjectUtil;->objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
    move-result-object v0
  .line 928
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "imageCaptureEnd"
    invoke-virtual { v1, v2, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  :L0
  .line 930
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->finishActivity(Z)V
  .line 931
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0, p1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(I)V
  .line 932
    return-void
.end method

.method public resume()V
  .registers 3
  .prologue
  .line 345
    const-string v0, "ToygerWorkspace.resume()"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
  .line 347
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->haveCameraPermission()Z
    move-result v0
    if-eqz v0, :L1
  .line 348
    const/4 v0, 1
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->setCameraVisible(Z)V
  .line 350
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
    if-eqz v0, :L1
  .line 351
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
    if-nez v0, :L0
  .line 352
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mAlertHelper:Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/alert/AlertHelper;->alert(Lcom/alipay/zoloz/toyger/workspace/alert/AlertType;)V
  :L0
  .line 355
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isPaused:Z
  :L1
  .line 358
    return-void
.end method

.method public retry()V
  .registers 4
  .prologue
    const/4 v2, 0
  .line 430
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCurrentToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
  .line 431
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->retry()V
  .line 433
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->reset()V
  .line 434
    sget-object v0, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->FACE_CAPTURING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mWorkState:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
  .line 436
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerTaskManager:Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerTaskManager;->resetTask()V
  .line 437
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getCircleUploadPattern()Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    move-result-object v0
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->setVisibility(I)V
  .line 440
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V
  .line 441
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setCloseButtonVisible(I)V
  .line 447
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
  .line 448
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->startTimerTask()V
  .line 449
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/c;
    invoke-interface { v0 }, Lcom/alipay/zoloz/hardware/camera/c;->startCamera()V
  .line 450
    iput-boolean v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isAlgorithRunning:Z
  .line 451
    return-void
.end method

.method public setCameraVisible(Z)V
  .registers 3
  .prologue
  .line 454
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    if-eqz v0, :L0
  .line 455
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0, p1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->setCameraVisible(Z)V
  :L0
  .line 457
    return-void
.end method

.method public showFaceStatus(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 8
  .prologue
    const/4 v5, 1
    const/4 v4, -1
  .line 1026
    const-string v0, ""
  .line 1028
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 1029
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->hasFace:Z
    if-nez v1, :L2
  .line 1030
    const-string v0, "ToygerAndroid !toygerFrame.tgFaceState.hasFace"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1031
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_noface()Ljava/lang/String;
    move-result-object v0
  .line 1032
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L0
  .line 1106
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 1107
    const-string v2, "prompt"
    invoke-interface { v1, v2, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 1109
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/util/ObjectUtil;->objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
    move-result-object v0
  .line 1110
    if-eqz v0, :L1
    invoke-virtual { v0 }, Ljava/util/HashMap;->isEmpty()Z
    move-result v2
    if-nez v2, :L1
  .line 1111
    invoke-interface { v1, v0 }, Ljava/util/Map;->putAll(Ljava/util/Map;)V
  :L1
  .line 1114
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "promptCopyPoint"
    invoke-virtual { v0, v2, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 1115
    return-void
  :L2
  .line 1035
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isCheckedFace:Z
    if-nez v1, :L3
  .line 1036
    iput-boolean v5, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isCheckedFace:Z
  .line 1038
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "detectCondEnd"
  .line 1039
    invoke-static { p1 }, Lcom/alipay/zoloz/toyger/util/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)Ljava/util/Map;
    move-result-object v3
  .line 1038
    invoke-virtual { v1, v2, v3 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 1041
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v2, "poseStart"
    invoke-virtual { v1, v2 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  :L3
  .line 1045
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->distance:I
    if-ne v1, v4, :L4
  .line 1046
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.distance == -1"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1047
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_max_rectwidth()Ljava/lang/String;
    move-result-object v0
  .line 1048
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L4
  .line 1052
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->distance:I
    if-ne v1, v5, :L5
  .line 1053
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.distance == 1"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1054
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_rectwidth()Ljava/lang/String;
    move-result-object v0
  .line 1055
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L0
  :L5
  .line 1059
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodQuality:Z
    if-eqz v1, :L6
  .line 1060
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.goodQuality == 1"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1061
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_stay()Ljava/lang/String;
    move-result-object v0
  .line 1062
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L6
  .line 1066
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->brightness:I
    if-ne v1, v4, :L7
  .line 1067
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.brightness == -1"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1068
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_light()Ljava/lang/String;
    move-result-object v0
  .line 1069
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L7
  .line 1073
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->faceInCenter:Z
    if-nez v1, :L8
  .line 1074
    const-string v0, "ToygerAndroid !toygerFrame.tgFaceState.faceInCenter"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1075
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_integrity()Ljava/lang/String;
    move-result-object v0
  .line 1076
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L8
  .line 1080
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodPitch:I
    if-nez v1, :L9
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodYaw:I
    if-eqz v1, :L10
  :L9
  .line 1081
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.goodPitch != 0 || toygerFrame.tgFaceState.goodYaw != 0"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1083
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_angle()Ljava/lang/String;
    move-result-object v0
  .line 1084
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L10
  .line 1088
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->isMoving:Z
    if-eqz v1, :L11
  .line 1089
    const-string v0, "ToygerAndroid toygerFrame.tgFaceState.isMoving"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1090
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_blur()Ljava/lang/String;
    move-result-object v0
  .line 1091
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L11
  .line 1095
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    iget-boolean v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;->goodQuality:Z
    if-nez v1, :L12
  .line 1096
    const-string v0, "ToygerAndroid !toygerFrame.tgFaceState.goodQuality"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1097
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->poseUtil:Lcom/alipay/zoloz/toyger/util/PoseUtil;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->getTopText_quality()Ljava/lang/String;
    move-result-object v0
  .line 1098
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
  :L12
  .line 1102
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 1103
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v1
    const-string v2, ""
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L0
.end method

.method public startTimerTask()V
  .registers 5
  .prologue
  .line 1118
    const-string v0, "ToygerAndroid startTimerTask"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 1119
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->isFirstTime:Z
  .line 1120
    new-instance v0, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    invoke-virtual { v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
  .line 1121
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->startListening()V
  .line 1123
    new-instance v0, Ljava/util/Vector;
    invoke-direct { v0 }, Ljava/util/Vector;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
  .line 1125
    const/16 v0, 20
  .line 1126
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v1
  .line 1127
    if-eqz v1, :L0
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v2
    if-eqz v2, :L0
  .line 1128
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTime()I
    move-result v0
  :L0
  .line 1131
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    mul-int/lit16 v2, v0, 1000
    invoke-direct { v1, v2 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(I)V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  .line 1132
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    new-instance v2, Lcom/alipay/zoloz/toyger/workspace/m;
    invoke-direct { v2, p0 }, Lcom/alipay/zoloz/toyger/workspace/m;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
    invoke-virtual { v1, v2 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V
  .line 1177
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    mul-int/lit16 v0, v0, 1000
    const/4 v2, 0
    sget v3, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->SENSOR_TIMER_INTERNAL:I
    invoke-direct { v1, v0, v2, v3 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(III)V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  .line 1178
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/e;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/workspace/e;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)V
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V
  .line 1199
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V
  .line 1200
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V
  .line 1201
    return-void
.end method

.method public stopTimerTask()V
  .catch Ljava/lang/Exception; { :L0 .. :L4 } :L5
  .registers 3
  .prologue
  .line 1212
    const-string v0, "ToygerAndroid stopTimerTask"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  :L0
  .line 1215
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    if-eqz v0, :L1
  .line 1216
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V
  .line 1217
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V
  .line 1218
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mDetectTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  :L1
  .line 1221
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    if-eqz v0, :L2
  .line 1222
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V
  .line 1223
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V
  .line 1224
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorTimerTask:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;
  :L2
  .line 1227
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
    if-eqz v0, :L3
  .line 1228
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
    invoke-virtual { v0 }, Ljava/util/Vector;->clear()V
  .line 1229
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorData:Ljava/util/Vector;
  :L3
  .line 1232
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    if-eqz v0, :L4
  .line 1233
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->destroy()V
  .line 1234
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mSensorCollectors:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
  :L4
  .line 1238
    return-void
  :L5
  .line 1236
    move-exception v0
    goto :L4
.end method

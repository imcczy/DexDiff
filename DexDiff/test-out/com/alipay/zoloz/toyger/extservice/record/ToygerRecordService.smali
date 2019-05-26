.class public Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "SourceFile"

.field public final static ALERT_APPEAR:Ljava/lang/String; = "AlertAppear"

.field public final static ALERT_CHOOSE:Ljava/lang/String; = "AlertChoose"

.field public final static ALGORITHM:Ljava/lang/String; = "Algorithm"

.field public final static BIG_PIC_SLICE:Ljava/lang/String; = "bigPicSlice"

.field public final static CALLBACK_VERIFY_SYSTEM:Ljava/lang/String; = "callbackVerifySystem"

.field public final static CLICK_BACK:Ljava/lang/String; = "clickback"

.field public final static CLICK_START_CAPTURE:Ljava/lang/String; = "clickStartCapture"

.field public final static DARK_PAGE_START:Ljava/lang/String; = "dark_page_start"

.field public final static DETECT_COND_END:Ljava/lang/String; = "detectCondEnd"

.field public final static DETECT_COND_START:Ljava/lang/String; = "detectCondStart"

.field public final static DEVICE_ERR:Ljava/lang/String; = "deviceErr"

.field public final static DEV_TECH_SEED:Ljava/lang/String; = "fromH5"

.field public final static ENTER_DETECTION_END:Ljava/lang/String; = "EnterDetectionEnd"

.field public final static ENTER_DETECTION_START:Ljava/lang/String; = "EnterDetectionStart"

.field public final static ENTER_GUIDE_PAGE:Ljava/lang/String; = "enterGuidePage"

.field public final static ENTRY_SDK:Ljava/lang/String; = "entrySDK"

.field public final static EXIT_GUIDE_PAGE:Ljava/lang/String; = "exitGuidePage"

.field public final static EXIT_SDK:Ljava/lang/String; = "exitSDK"

.field public final static EYE_SLICE:Ljava/lang/String; = "eyeSlice"

.field public final static FACE_SLICE:Ljava/lang/String; = "faceSlice"

.field public final static IMAGE_CAPTURE_END:Ljava/lang/String; = "imageCaptureEnd"

.field public final static IMAGE_CAPTURE_START:Ljava/lang/String; = "imageCaptureStart"

.field public final static LIVEBODY_END:Ljava/lang/String; = "livebodyEnd"

.field public final static LIVEBODY_START:Ljava/lang/String; = "livebodyStart"

.field public final static LOAD_ALGORITHM_ERR:Ljava/lang/String; = "loadAlgorithmErr"

.field public final static NOTICE_EXIT_SDK:Ljava/lang/String; = "noticeExitSDK"

.field public final static POSE_CHECK_END:Ljava/lang/String; = "poseCheckEnd"

.field public final static POSE_END:Ljava/lang/String; = "poseEnd"

.field public final static POSE_START:Ljava/lang/String; = "poseStart"

.field public final static PROMPT_COPY_POINT:Ljava/lang/String; = "promptCopyPoint"

.field public final static SENSOR_SLICE:Ljava/lang/String; = "sensorSlice"

.field public final static UPLOAD_AVARRIABLE:Ljava/lang/String; = "uploadAvarriable"

.field public final static UPLOAD_END:Ljava/lang/String; = "uploadEnd"

.field public final static UPLOAD_START:Ljava/lang/String; = "uploadStart"

.field protected mRecordMap:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap",
      "<",
      "Ljava/lang/String;",
      "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
      ">;"
    }
  .end annotation
.end field

.field private mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 17
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V
    return-void
.end method

.method public addExtProperties(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 363
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    invoke-virtual { v0, p1 }, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->addExtProperties(Ljava/util/Map;)V
  .line 364
    return-void
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
  .registers 15
  .prologue
    const/4 v11, 3
    const/4 v5, 1
  .line 168
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/service/BioService;->onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
  .line 170
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
  .line 173
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "entrySDK"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-01"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "entrySDK"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 178
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "enterGuidePage"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-02"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "enterGuidePage"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 183
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "exitGuidePage"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-03"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "exitGuidePage"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 188
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "fromH5"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-03"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "fromH5"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 193
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "clickStartCapture"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-04"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "clickStartCapture"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 198
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "deviceErr"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-05"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "deviceErr"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 203
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "loadAlgorithmErr"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-06"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "loadAlgorithmErr"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 208
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "EnterDetectionStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-07"
    const-string v2, "openPage"
    const-string v3, "20000189"
    const-string v4, "enterDetectionStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 213
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "EnterDetectionEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-08"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "enterDetectionEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 218
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "detectCondStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-09"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "detectCondStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 223
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "detectCondEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-10"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "detectCondEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 228
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "poseStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-11"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "poseStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 233
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "poseEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-12"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "poseEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 238
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "livebodyStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-13"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "livebodyStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 243
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "livebodyEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-14"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "livebodyEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 248
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "uploadStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-15"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "imageUploadStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 253
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "uploadEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-16"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "imageUploadEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 258
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v1, "promptCopyPoint"
    new-instance v6, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v7, "UC-YWRLSB-161114-17"
    const-string v8, "event"
    const-string v9, "20000189"
    const-string v10, "actionPrompt"
    const-string v12, "2"
    invoke-direct/range { v6 .. v12 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-virtual { v0, v1, v6 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 263
    iget-object v7, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v8, "faceSlice"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-18"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "faceSlice"
    const-string v6, "2"
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-virtual { v7, v8, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 268
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "eyeSlice"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-19"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "eyeSlice"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 273
    iget-object v7, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v8, "sensorSlice"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-20"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "sensorSlice"
    const-string v6, "2"
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-virtual { v7, v8, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 278
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "AlertAppear"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-21"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "alertAppear"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 283
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "AlertChoose"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-22"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "alertChoose"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 288
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "callbackVerifySystem"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-23"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "callbackVerifySystem"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 293
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "noticeExitSDK"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-26"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "noticeExitSDK"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 298
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "exitSDK"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-24"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "exitSDK"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 303
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "uploadAvarriable"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-25"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "uploadAvailable"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 308
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "bigPicSlice"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-26"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "bigPicSlice"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 313
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v1, "Algorithm"
    new-instance v6, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v7, "UC-YWRLSB-161114-27"
    const-string v8, "event"
    const-string v9, "20000189"
    const-string v10, "Algorithm"
    invoke-direct/range { v6 .. v11 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v0, v1, v6 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 318
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "poseCheckEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-28"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "poseCheckEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 323
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "dark_page_start"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-29"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "darkPageStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 329
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "imageCaptureStart"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-30"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "imageCaptureStart"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 334
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "imageCaptureEnd"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-31"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "imageCaptureEnd"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 339
    iget-object v6, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    const-string v7, "clickback"
    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    const-string v1, "UC-YWRLSB-161114-32"
    const-string v2, "event"
    const-string v3, "20000189"
    const-string v4, "clickback"
    invoke-direct/range { v0 .. v5 }, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-virtual { v6, v7, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 345
    const-class v0, Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    invoke-virtual { p1, v0 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;
  .line 346
    return-void
.end method

.method public onDestroy()V
  .registers 1
  .prologue
  .line 383
    invoke-super { p0 }, Lcom/alipay/mobile/security/bio/service/BioService;->onDestroy()V
  .line 384
    return-void
.end method

.method public retry()V
  .registers 2
  .prologue
  .line 378
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->retry()V
  .line 379
    return-void
.end method

.method public write(Ljava/lang/String;)V
  .registers 3
  .prologue
  .line 354
    const/4 v0, 0
    invoke-virtual { p0, p1, v0 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
  .line 355
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 373
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mRecordMap:Ljava/util/HashMap;
    invoke-virtual { v0, p1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
  .line 374
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->mZimRecordService:Lcom/alipay/mobile/security/bio/service/ZimRecordService;
    invoke-virtual { v1, v0, p2 }, Lcom/alipay/mobile/security/bio/service/ZimRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;Ljava/util/Map;)Z
  .line 375
    return-void
.end method

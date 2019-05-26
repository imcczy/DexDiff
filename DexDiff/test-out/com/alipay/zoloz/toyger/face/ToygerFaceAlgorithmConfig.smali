.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
.super Lcom/alipay/zoloz/toyger/ToygerAlgorithmConfig;
.source "SourceFile"

.field public final static BAT_LIVENESS:Ljava/lang/String; = "BatLiveness"

.field public final static DARK:Ljava/lang/String; = "dark"

.field public final static DEPTH:Ljava/lang/String; = "depth"

.field public final static DRAGONFLY_LIVENESS:Ljava/lang/String; = "DragonflyLiveness"

.field public final static GEMINI_LIVENESS:Ljava/lang/String; = "GeminiLiveness"

.field public final static NO_LIVENESS:Ljava/lang/String; = "NoLiveness"

.field public final static PANO:Ljava/lang/String; = "pano"

.field public blink:I

.field public differ:F

.field public disWeight:I

.field public eyeHwratio:F

.field public facesize:I

.field public liveness_combination:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field public liveness_combinations:Ljava/lang/String;

.field public log_level:I

.field public max_iod:F

.field public min_iod:F

.field public minpose:I

.field public mouth:I

.field public pitchWeight:I

.field public pose_distanceMax:I

.field public pose_distanceMin:I

.field public pose_gaussian:F

.field public pose_integrity:F

.field public pose_light:F

.field public pose_motion:F

.field public pose_pitch:F

.field public pose_pitchMin:F

.field public pose_rectwidth:F

.field public pose_yaw:F

.field public pose_yawMin:F

.field public quality_min_quality:I

.field public stack_size:I

.field public stack_time:I

.field public threshold:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field public upload:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field public yawWeight:I

.field public yunqiQuality:I

.method public constructor <init>()V
  .registers 7
  .prologue
    const/4 v5, 2
    const v4, 1042536202
    const/4 v3, 4
    const v2, 1045220557
    const/4 v1, 0
  .line 62
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/ToygerAlgorithmConfig;-><init>()V
  .line 63
    const/16 v0, 6000
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_distanceMax:I
  .line 64
    iput v4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->eyeHwratio:F
  .line 65
    iput v5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->stack_time:I
  .line 66
    iput v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->blink:I
  .line 67
    iput v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_pitch:F
  .line 68
    iput v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->yunqiQuality:I
  .line 69
    iput v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_yaw:F
  .line 70
    const v0, 1041865114
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_gaussian:F
  .line 71
    const-string v0, "NoLiveness"
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combinations:Ljava/lang/String;
  .line 72
    iput v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->minpose:I
  .line 73
    iput v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_motion:F
  .line 74
    iput v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pitchWeight:I
  .line 75
    const v0, -1102263091
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_pitchMin:F
  .line 76
    const/high16 v0, 16000
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_rectwidth:F
  .line 77
    const v0, 1063675494
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_integrity:F
  .line 78
    iput v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->disWeight:I
  .line 79
    iput v4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_light:F
  .line 80
    const/4 v0, 1
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->yawWeight:I
  .line 81
    const v0, -1104276357
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_yawMin:F
  .line 82
    iput v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->log_level:I
  .line 83
    const/16 v0, 5000
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_distanceMin:I
  .line 84
    iput v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->mouth:I
  .line 85
    const/16 v0, 50
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->facesize:I
  .line 86
    iput v5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->stack_size:I
  .line 87
    const/16 v0, 20
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->quality_min_quality:I
  .line 88
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combination:Ljava/util/List;
  .line 89
    new-instance v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig$1;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig$1;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->threshold:Ljava/util/Map;
  .line 90
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->upload:Ljava/util/List;
  .line 91
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->upload:Ljava/util/List;
    const-string v1, "pano"
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 92
    const v0, 1043878380
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->min_iod:F
  .line 93
    const v0, 1055286886
    iput v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->max_iod:F
  .line 94
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
  .registers 2
  .prologue
  .line 97
    const-class v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
    invoke-static { p0, v0 }, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;
  .line 98
    return-object v0
.end method

.method public toToygerConfig()Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
  .registers 14
  .prologue
  .line 102
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
    iget v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_light:F
    iget v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_rectwidth:F
    iget v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_integrity:F
    iget v4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_pitch:F
    iget v5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_yaw:F
    iget v6, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_gaussian:F
    iget v7, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->pose_motion:F
    iget v8, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->quality_min_quality:I
    int-to-float v8, v8
    iget v9, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->stack_size:I
    iget v10, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->stack_time:I
    iget v11, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->min_iod:F
    iget v12, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->max_iod:F
    invoke-direct/range { v0 .. v12 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;-><init>(FFFFFFFFIIFF)V
  .line 106
    new-instance v1, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->liveness_combinations:Ljava/lang/String;
    iget v3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->eyeHwratio:F
    iget v4, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->differ:F
    iget v5, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAlgorithmConfig;->yunqiQuality:I
    int-to-float v5, v5
    const/4 v6, 0
    invoke-direct/range { v1 .. v6 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;-><init>(Ljava/lang/String;FFFF)V
  .line 109
    new-instance v2, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;
    invoke-direct { v2 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;-><init>()V
  .line 110
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->qualityConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerQualityConfig;
  .line 111
    iput-object v1, v2, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->livenessConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerLivenessConfig;
  .line 112
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;-><init>()V
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;->cameraConfig:Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;
  .line 113
    return-object v2
.end method

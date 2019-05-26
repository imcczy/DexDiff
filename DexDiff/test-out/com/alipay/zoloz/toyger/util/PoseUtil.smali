.class public Lcom/alipay/zoloz/toyger/util/PoseUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.field private topText_angle:Ljava/lang/String;

.field private topText_blink:Ljava/lang/String;

.field private topText_blur:Ljava/lang/String;

.field private topText_integrity:Ljava/lang/String;

.field private topText_light:Ljava/lang/String;

.field private topText_max_rectwidth:Ljava/lang/String;

.field private topText_noface:Ljava/lang/String;

.field private topText_quality:Ljava/lang/String;

.field private topText_rectwidth:Ljava/lang/String;

.field private topText_stay:Ljava/lang/String;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;Landroid/content/res/Resources;)V
  .registers 4
  .prologue
  .line 106
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 17
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_noface:Ljava/lang/String;
  .line 18
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_light:Ljava/lang/String;
  .line 19
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_rectwidth:Ljava/lang/String;
  .line 20
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_integrity:Ljava/lang/String;
  .line 21
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_angle:Ljava/lang/String;
  .line 22
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blur:Ljava/lang/String;
  .line 23
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_quality:Ljava/lang/String;
  .line 24
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blink:Ljava/lang/String;
  .line 25
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_stay:Ljava/lang/String;
  .line 26
    const-string v0, ""
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_max_rectwidth:Ljava/lang/String;
  .line 107
    invoke-direct { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->initText(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;Landroid/content/res/Resources;)V
  .line 108
    return-void
.end method

.method private initLocalText(Landroid/content/res/Resources;)V
  .registers 3
  .prologue
  .line 30
    if-nez p1, :L1
  :L0
  .line 44
    return-void
  :L1
  .line 34
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_noface:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_noface:Ljava/lang/String;
  .line 35
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_light:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_light:Ljava/lang/String;
  .line 36
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_rectwidth:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_rectwidth:Ljava/lang/String;
  .line 37
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_integrity:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_integrity:Ljava/lang/String;
  .line 38
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_angle:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_angle:Ljava/lang/String;
  .line 39
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_blur:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blur:Ljava/lang/String;
  .line 40
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_quality:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_quality:Ljava/lang/String;
  .line 41
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_blink:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blink:Ljava/lang/String;
  .line 42
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_stay:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_stay:Ljava/lang/String;
  .line 43
    sget v0, Lcom/alipay/zoloz/toyger/R$string;->topText_max_rectwidth:I
    invoke-virtual { p1, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_max_rectwidth:Ljava/lang/String;
    goto :L0
.end method

.method private initRemoteText(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)V
  .registers 4
  .prologue
  .line 47
    if-nez p1, :L1
  :L0
  .line 87
    return-void
  :L1
  .line 50
    invoke-virtual { p1 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;
    move-result-object v0
  .line 51
    if-eqz v0, :L0
  .line 56
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_noface()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
  .line 57
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_noface()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_noface:Ljava/lang/String;
  :L2
  .line 60
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_light()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L3
  .line 61
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_light()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_light:Ljava/lang/String;
  :L3
  .line 63
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_rectwidth()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L4
  .line 64
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_rectwidth()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_rectwidth:Ljava/lang/String;
  :L4
  .line 66
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_integrity()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L5
  .line 67
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_integrity()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_integrity:Ljava/lang/String;
  :L5
  .line 69
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_angle()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L6
  .line 70
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_angle()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_angle:Ljava/lang/String;
  :L6
  .line 72
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blur()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L7
  .line 73
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blur()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blur:Ljava/lang/String;
  :L7
  .line 75
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_quality()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L8
  .line 76
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_quality()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_quality:Ljava/lang/String;
  :L8
  .line 78
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blink()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L9
  .line 79
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_blink()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blink:Ljava/lang/String;
  :L9
  .line 81
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_stay()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L10
  .line 82
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_stay()Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_stay:Ljava/lang/String;
  :L10
  .line 84
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_max_rectwidth()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L0
  .line 85
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTopText_max_rectwidth()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_max_rectwidth:Ljava/lang/String;
    goto/16 :L0
.end method

.method private initText(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;Landroid/content/res/Resources;)V
  .registers 3
  .prologue
  .line 90
    invoke-direct { p0, p2 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->initLocalText(Landroid/content/res/Resources;)V
  .line 91
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/util/PoseUtil;->initRemoteText(Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;)V
  .line 92
    return-void
.end method

.method private isFaceInScreen(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Z
  .registers 7
  .prologue
    const/4 v0, 0
    const/high16 v4, 16256
    const/4 v3, 0
  .line 95
    if-nez p1, :L1
  :L0
  .line 103
    return v0
  :L1
  .line 99
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->faceRegion:Landroid/graphics/RectF;
  .line 100
    if-eqz v1, :L0
    iget v2, v1, Landroid/graphics/RectF;->left:F
    cmpg-float v2, v2, v3
    if-ltz v2, :L0
    iget v2, v1, Landroid/graphics/RectF;->top:F
    cmpg-float v2, v2, v3
    if-ltz v2, :L0
    iget v2, v1, Landroid/graphics/RectF;->left:F
    invoke-virtual { v1 }, Landroid/graphics/RectF;->width()F
    move-result v3
    add-float/2addr v2, v3
    cmpl-float v2, v2, v4
    if-gtz v2, :L0
    iget v2, v1, Landroid/graphics/RectF;->top:F
    invoke-virtual { v1 }, Landroid/graphics/RectF;->height()F
    move-result v1
    add-float/2addr v1, v2
    cmpl-float v1, v1, v4
    if-gtz v1, :L0
  .line 103
    const/4 v0, 1
    goto :L0
.end method

.method public getTopText_angle()Ljava/lang/String;
  .registers 2
  .prologue
  .line 135
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_angle:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_blink()Ljava/lang/String;
  .registers 2
  .prologue
  .line 119
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blink:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_blur()Ljava/lang/String;
  .registers 2
  .prologue
  .line 139
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_blur:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_integrity()Ljava/lang/String;
  .registers 2
  .prologue
  .line 131
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_integrity:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_light()Ljava/lang/String;
  .registers 2
  .prologue
  .line 123
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_light:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_max_rectwidth()Ljava/lang/String;
  .registers 2
  .prologue
  .line 147
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_max_rectwidth:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_noface()Ljava/lang/String;
  .registers 2
  .prologue
  .line 111
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_noface:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_quality()Ljava/lang/String;
  .registers 2
  .prologue
  .line 115
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_quality:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_rectwidth()Ljava/lang/String;
  .registers 2
  .prologue
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_rectwidth:Ljava/lang/String;
    return-object v0
.end method

.method public getTopText_stay()Ljava/lang/String;
  .registers 2
  .prologue
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/util/PoseUtil;->topText_stay:Ljava/lang/String;
    return-object v0
.end method

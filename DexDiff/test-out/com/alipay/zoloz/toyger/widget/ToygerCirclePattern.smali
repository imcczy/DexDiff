.class public Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

.field private mAlgorithmInfoPattern:Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;

.field private mAnimateValue:I

.field private mBottomImage:Landroid/widget/ImageView;

.field private mBottomLeftTip:Landroid/widget/TextView;

.field private mBottomRightTip:Landroid/widget/TextView;

.field private mBottomTextView:Landroid/widget/TextView;

.field public mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

.field public mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;

.field public mCircleUploadPatternViewStub:Landroid/view/ViewStub;

.field private mGuassianBackground:Landroid/widget/ImageView;

.field private mImgBack:Landroid/widget/ImageView;

.field public mIsShowProcess:Z

.field public mMainHandler:Landroid/os/Handler;

.field private mOuterBakRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field public mParentView:Landroid/view/View;

.field private mRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field private mRoundProgressBarInner:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;

.field private mTitleBar:Lcom/alipay/biometrics/ui/widget/TitleBar;

.field private mTopTipView:Landroid/widget/TextView;

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 2
  .prologue
  .line 57
    invoke-direct { p0, p1 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
  .line 58
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->initViews()V
  .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 3
  .prologue
  .line 62
    invoke-direct { p0, p1, p2 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 63
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->initViews()V
  .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 4
  .prologue
  .line 67
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 68
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->initViews()V
  .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)I
  .registers 2
  .prologue
  .line 32
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mAnimateValue:I
    return v0
.end method

.method static synthetic access$002(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;I)I
  .registers 2
  .prologue
  .line 32
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mAnimateValue:I
    return p1
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .registers 2
  .prologue
  .line 32
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .prologue
  .line 270
    invoke-static { p1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 274
    return-object p2
  :L1
    move-object p2, p1
    goto :L0
.end method

.method private showAnimator(IIZ)V
  .registers 9
  .prologue
    const/4 v4, 1
  .line 212
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mIsShowProcess:Z
    if-eqz v0, :L1
  :L0
  .line 259
    return-void
  :L1
  .line 216
    iput-boolean v4, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mIsShowProcess:Z
  .line 217
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/widget/i;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/widget/i;-><init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
    int-to-long v2, p2
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 226
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->getProgress()I
    move-result v0
  .line 228
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    if-eqz v1, :L2
  .line 229
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v1 }, Landroid/animation/ValueAnimator;->cancel()V
  :L2
  .line 232
    const/4 v1, 2
    new-array v1, v1, [I
    const/4 v2, 0
    aput v0, v1, v2
    aput p1, v1, v4
    invoke-static { v1 }, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  .line 233
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    int-to-long v2, p2
    invoke-virtual { v0, v2, v3 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 235
    if-eqz p3, :L4
  .line 236
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;
    invoke-direct { v1 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  :L3
  .line 241
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/alipay/zoloz/toyger/widget/j;
    invoke-direct { v1, p0, p1 }, Lcom/alipay/zoloz/toyger/widget/j;-><init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;I)V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
  .line 258
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->start()V
    goto :L0
  :L4
  .line 238
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;
    invoke-direct { v1 }, Landroid/view/animation/AccelerateInterpolator;-><init>()V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
    goto :L3
.end method

.method public destroy()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 310
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
  .line 311
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPatternViewStub:Landroid/view/ViewStub;
  .line 312
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mMainHandler:Landroid/os/Handler;
  .line 313
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mParentView:Landroid/view/View;
  .line 314
    return-void
.end method

.method public getAlgorithmInfoPattern()Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
  .registers 2
  .prologue
  .line 306
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mAlgorithmInfoPattern:Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
    return-object v0
.end method

.method public getBackButton()Landroid/widget/ImageView;
  .registers 2
  .prologue
  .line 190
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mImgBack:Landroid/widget/ImageView;
    return-object v0
.end method

.method public getBottomImage()Landroid/widget/ImageView;
  .registers 2
  .prologue
  .line 298
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomImage:Landroid/widget/ImageView;
    return-object v0
.end method

.method public getBottomTextView()Landroid/widget/TextView;
  .registers 2
  .prologue
  .line 302
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomTextView:Landroid/widget/TextView;
    return-object v0
.end method

.method public getCameraSurfaceView()Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
  .registers 2
  .prologue
  .line 135
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    return-object v0
.end method

.method public getCircleUploadPattern()Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
  .registers 3
  .prologue
  .line 125
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    if-nez v0, :L0
  .line 126
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPatternViewStub:Landroid/view/ViewStub;
    invoke-virtual { v0 }, Landroid/view/ViewStub;->inflate()Landroid/view/View;
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mParentView:Landroid/view/View;
    sget v1, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_pattern_upload_info:I
    invoke-virtual { v0, v1 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
  :L0
  .line 131
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    return-object v0
.end method

.method public getGuassianBackground()Landroid/widget/ImageView;
  .registers 2
  .prologue
  .line 294
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
    return-object v0
.end method

.method public getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .registers 2
  .prologue
  .line 290
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mOuterBakRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    return-object v0
.end method

.method public getRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .registers 2
  .prologue
  .line 286
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    return-object v0
.end method

.method public getRoundProgressBarInner()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .registers 2
  .prologue
  .line 282
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBarInner:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    return-object v0
.end method

.method public getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
  .registers 2
  .prologue
  .line 187
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mTitleBar:Lcom/alipay/biometrics/ui/widget/TitleBar;
    return-object v0
.end method

.method public getTopTip()Landroid/widget/TextView;
  .registers 2
  .prologue
  .line 194
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mTopTipView:Landroid/widget/TextView;
    return-object v0
.end method

.method public getWaveView()Lcom/alipay/biometrics/ui/widget/WaveView;
  .registers 2
  .prologue
  .line 278
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    return-object v0
.end method

.method public init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .registers 3
  .prologue
  .line 121
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v0, p1 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
  .line 122
    return-void
.end method

.method public initViews()V
  .registers 4
  .prologue
  .line 72
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$layout;->toyger_circle_pattern:I
    const/4 v2, 1
    invoke-virtual { v0, v1, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v1
  .line 74
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mParentView:Landroid/view/View;
  .line 75
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_surfaceview:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
  .line 76
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_bottom_tip:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomTextView:Landroid/widget/TextView;
  .line 77
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_upload_info_stub:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/view/ViewStub;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPatternViewStub:Landroid/view/ViewStub;
  .line 78
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_titlebar:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/biometrics/ui/widget/TitleBar;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mTitleBar:Lcom/alipay/biometrics/ui/widget/TitleBar;
  .line 79
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_circle_algothm_info:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mAlgorithmInfoPattern:Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
  .line 80
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_round_inner:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBarInner:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 81
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_top_tip:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mTopTipView:Landroid/widget/TextView;
  .line 82
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-direct { v0, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mMainHandler:Landroid/os/Handler;
  .line 83
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_round_processbar:I
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 88
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->toyger_circle_round_outer_bak:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mOuterBakRoundProgressBar:Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
  .line 89
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_wave:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/biometrics/ui/widget/WaveView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
  .line 90
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_guassian_background:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
  .line 91
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_bottom_image:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomImage:Landroid/widget/ImageView;
  .line 92
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_bottom_left_protocol:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomLeftTip:Landroid/widget/TextView;
  .line 93
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomLeftTip:Landroid/widget/TextView;
    new-instance v2, Lcom/alipay/zoloz/toyger/widget/g;
    invoke-direct { v2, p0 }, Lcom/alipay/zoloz/toyger/widget/g;-><init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 110
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_circle_bottom_right:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomRightTip:Landroid/widget/TextView;
  .line 111
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mBottomRightTip:Landroid/widget/TextView;
    new-instance v1, Lcom/alipay/zoloz/toyger/widget/h;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/widget/h;-><init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 118
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 6
  .prologue
  .line 263
    invoke-super/range { p0 .. p5 }, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V
  .line 267
    return-void
.end method

.method public onPreviewChanged(DD)V
  .registers 12
  .prologue
    const/4 v6, 0
    const-wide/high16 v4, 16368
  .line 139
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    if-eqz v0, :L0
  .line 141
    cmpg-double v0, p1, p3
    if-gez v0, :L1
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
  .line 144
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setPreviewChanged parent : W:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " H:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 145
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setPreviewChanged preview: w:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " h:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p3, p4 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 146
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
    int-to-double v2, v1
    mul-double/2addr v4, p1
    div-double/2addr v2, v4
    mul-double/2addr v2, p3
    double-to-int v2, v2
  .line 147
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
  .line 148
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v1, v0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 149
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v1, v6 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setBackgroundColor(I)V
  .line 151
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 152
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I
  .line 154
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L0
  .line 175
    return-void
  :L1
  .line 157
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
  .line 158
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setPreviewChanged parent : W:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " H:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 159
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "setPreviewChanged preview: w:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1, p2 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " h:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p3, p4 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 160
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
    int-to-double v2, v1
    mul-double/2addr v4, p3
    div-double/2addr v2, v4
    mul-double/2addr v2, p1
    double-to-int v2, v2
  .line 161
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I
  .line 162
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v1, v0 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 163
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    invoke-virtual { v1, v6 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setBackgroundColor(I)V
  .line 165
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
  .line 166
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I
  .line 168
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mGuassianBackground:Landroid/widget/ImageView;
    invoke-virtual { v1, v0 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    goto :L0
.end method

.method public pause()V
  .registers 2
  .prologue
  .line 198
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    if-eqz v0, :L0
  .line 199
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCircleUploadPattern:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->stopProcess()V
  :L0
  .line 201
    return-void
.end method

.method public setCameraVisible(Z)V
  .registers 4
  .prologue
  .line 204
    if-eqz p1, :L1
  .line 205
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setVisibility(I)V
  :L0
  .line 209
    return-void
  :L1
  .line 207
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setVisibility(I)V
    goto :L0
.end method

.method public showProcessBar(F)V
  .registers 5
  .prologue
  .line 178
    const/high16 v0, 17761
    mul-float/2addr v0, p1
    float-to-int v0, v0
    const/16 v1, 500
    const/4 v2, 0
    invoke-direct { p0, v0, v1, v2 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showAnimator(IIZ)V
  .line 179
    return-void
.end method

.method public showProcessBar(FIZ)V
  .registers 6
  .prologue
    const/4 v1, 0
  .line 182
    if-nez p3, :L1
    const/4 v0, 1
  :L0
    iput-boolean v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mIsShowProcess:Z
  .line 183
    const/high16 v0, 17761
    mul-float/2addr v0, p1
    float-to-int v0, v0
    invoke-direct { p0, v0, p2, v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->showAnimator(IIZ)V
  .line 184
    return-void
  :L1
    move v0, v1
  .line 182
    goto :L0
.end method

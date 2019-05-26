.class public Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

.field mContext:Landroid/content/Context;

.field mFacePreView:Landroid/widget/ImageView;

.field private mIsShowProcess:Z

.field private mMainHandler:Landroid/os/Handler;

.field mProcessTextView:Landroid/widget/TextView;

.field mUploadProgressBar:Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private processsAngle:I

.field rootView:Landroid/widget/RelativeLayout;

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
  .prologue
  .line 41
    invoke-direct { p0, p1 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
  .line 34
    const/16 v0, 180
    iput v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->processsAngle:I
  .line 36
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  .line 42
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
  .line 43
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->initViews()V
  .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .prologue
  .line 47
    invoke-direct { p0, p1, p2 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 34
    const/16 v0, 180
    iput v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->processsAngle:I
  .line 36
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  .line 48
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
  .line 49
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->initViews()V
  .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 5
  .prologue
  .line 53
    invoke-direct { p0, p1, p2, p3 }, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 34
    const/16 v0, 180
    iput v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->processsAngle:I
  .line 36
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  .line 54
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
  .line 55
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->initViews()V
  .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
  .registers 1
  .prologue
  .line 25
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->intervalAction()V
    return-void
.end method

.method static synthetic access$102(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;Z)Z
  .registers 2
  .prologue
  .line 25
    iput-boolean p1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mIsShowProcess:Z
    return p1
.end method

.method static synthetic access$200(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)I
  .registers 2
  .prologue
  .line 25
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->processsAngle:I
    return v0
.end method

.method static synthetic access$202(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;I)I
  .registers 2
  .prologue
  .line 25
    iput p1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->processsAngle:I
    return p1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .prologue
  .line 146
    invoke-static { p1 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 150
    return-object p2
  :L1
    move-object p2, p1
    goto :L0
.end method

.method private intervalAction()V
  .registers 7
  .prologue
    const-wide/16 v4, 1000
    const/4 v3, 1
    const/4 v2, 0
  .line 79
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mMainHandler:Landroid/os/Handler;
    new-instance v1, Lcom/alipay/zoloz/toyger/widget/a;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/widget/a;-><init>(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
    invoke-virtual { v0, v1, v4, v5 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  .line 90
    iget-boolean v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mIsShowProcess:Z
    if-eqz v0, :L1
  :L0
  .line 132
    return-void
  :L1
  .line 93
    iput-boolean v3, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mIsShowProcess:Z
  .line 98
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    if-eqz v0, :L2
  .line 99
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  :L2
  .line 102
    const/4 v0, 2
    new-array v0, v0, [I
    aput v2, v0, v2
    const/16 v1, 30
    aput v1, v0, v3
    invoke-static { v0 }, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  .line 103
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0, v4, v5 }, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
  .line 106
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;
    invoke-direct { v1 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 111
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/alipay/zoloz/toyger/widget/b;
    invoke-direct { v1, p0 }, Lcom/alipay/zoloz/toyger/widget/b;-><init>(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
    invoke-virtual { v0, v1 }, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
  .line 129
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->start()V
    goto :L0
.end method

.method public initViews()V
  .registers 4
  .prologue
  .line 59
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object v0
    sget v1, Lcom/alipay/zoloz/toyger/R$layout;->faceeye_loading_pattern:I
    const/4 v2, 1
    invoke-virtual { v0, v1, p0, v2 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v1
  .line 61
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_eye_loading_page:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/RelativeLayout;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->rootView:Landroid/widget/RelativeLayout;
  .line 62
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->simple_face_preview:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mFacePreView:Landroid/widget/ImageView;
  .line 63
    new-instance v0, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-direct { v0, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mMainHandler:Landroid/os/Handler;
  .line 64
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->zoloz_back_progress:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mUploadProgressBar:Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;
  .line 65
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->simple_process_text:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mProcessTextView:Landroid/widget/TextView;
  .line 67
    return-void
.end method

.method protected onAttachedToWindow()V
  .registers 1
  .prologue
  .line 155
    invoke-super { p0 }, Landroid/widget/RelativeLayout;->onAttachedToWindow()V
  .line 156
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->startProcess()V
  .line 157
    return-void
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .prologue
  .line 161
    invoke-super { p0 }, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V
  .line 162
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->stopProcess()V
  .line 163
    const/4 v0, 0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
  .line 165
    return-void
.end method

.method public setBackgroundColor(I)V
  .registers 3
  .prologue
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->rootView:Landroid/widget/RelativeLayout;
    invoke-virtual { v0, p1 }, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
  .line 143
    return-void
.end method

.method public startProcess()V
  .registers 4
  .prologue
  .line 70
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mProcessTextView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    sget v2, Lcom/alipay/zoloz/toyger/R$string;->face_eye_processing:I
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 72
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->intervalAction()V
  .line 73
    return-void
.end method

.method public stopProcess()V
  .registers 1
  .prologue
  .line 138
    return-void
.end method

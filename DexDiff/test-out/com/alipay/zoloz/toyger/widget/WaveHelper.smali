.class public Lcom/alipay/zoloz/toyger/widget/WaveHelper;
.super Ljava/lang/Object;
.source "SourceFile"

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;

.method public constructor <init>(Lcom/alipay/biometrics/ui/widget/WaveView;)V
  .registers 2
  .prologue
  .line 21
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 22
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
  .line 23
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->initAnimation()V
  .line 24
    return-void
.end method

.method private initAnimation()V
  .registers 9
  .prologue
    const-wide/16 v6, 1000
    const/4 v5, -1
    const/4 v4, 2
  .line 46
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 50
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const-string v2, "waveShiftRatio"
    new-array v3, v4, [F
    fill-array-data v3, :L0
    invoke-static { v1, v2, v3 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    move-result-object v1
  .line 52
    invoke-virtual { v1, v5 }, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V
  .line 53
    invoke-virtual { v1, v6, v7 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 54
    new-instance v2, Landroid/view/animation/LinearInterpolator;
    invoke-direct { v2 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { v1, v2 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 55
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 59
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const-string v2, "waterLevelRatio"
    new-array v3, v4, [F
    fill-array-data v3, :L1
    invoke-static { v1, v2, v3 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    move-result-object v1
  .line 61
    const-wide/16 v2, 2000
    invoke-virtual { v1, v2, v3 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 62
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;
    invoke-direct { v2 }, Landroid/view/animation/DecelerateInterpolator;-><init>()V
    invoke-virtual { v1, v2 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 63
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 67
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const-string v2, "amplitudeRatio"
    new-array v3, v4, [F
    fill-array-data v3, :L2
    invoke-static { v1, v2, v3 }, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    move-result-object v1
  .line 69
    invoke-virtual { v1, v5 }, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V
  .line 70
    invoke-virtual { v1, v4 }, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V
  .line 71
    invoke-virtual { v1, v6, v7 }, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;
  .line 72
    new-instance v2, Landroid/view/animation/LinearInterpolator;
    invoke-direct { v2 }, Landroid/view/animation/LinearInterpolator;-><init>()V
    invoke-virtual { v1, v2 }, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V
  .line 73
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 75
    new-instance v1, Landroid/animation/AnimatorSet;
    invoke-direct { v1 }, Landroid/animation/AnimatorSet;-><init>()V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
  .line 76
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual { v1, v0 }, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V
  .line 77
    return-void
  .line 50
  .line 59
  .line 67
  :L0
  .array-data 4
    0t 0t 0t 0t
    0t 0t -128t 63t
  .end array-data
  :L1
  .array-data 4
    0t 0t 0t 0t
    -51t -52t 76t 63t
  .end array-data
  :L2
  .array-data 4
    23t -73t -47t 56t
    -51t -52t 76t 61t
  .end array-data
.end method

.method public cancel()V
  .registers 3
  .prologue
  .line 80
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    invoke-virtual { v0 }, Lcom/alipay/biometrics/ui/widget/WaveView;->isShowWave()Z
    move-result v0
    if-nez v0, :L1
  :L0
  .line 90
    return-void
  :L1
  .line 84
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    if-eqz v0, :L0
  .line 85
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setVisibility(I)V
  .line 86
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setShowWave(Z)V
  .line 87
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->cancel()V
  .line 88
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->end()V
    goto :L0
.end method

.method public setBorder(II)V
  .registers 4
  .prologue
  .line 35
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    invoke-virtual { v0, p1, p2 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setBorder(II)V
  .line 36
    return-void
.end method

.method public setWaveColor(II)V
  .registers 4
  .prologue
  .line 39
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    invoke-virtual { v0, p1, p2 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setWaveColor(II)V
  .line 42
    return-void
.end method

.method public start()V
  .registers 3
  .prologue
  .line 27
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setShowWave(Z)V
  .line 28
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mWaveView:Lcom/alipay/biometrics/ui/widget/WaveView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/WaveView;->setVisibility(I)V
  .line 29
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    if-eqz v0, :L0
  .line 30
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/WaveHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-virtual { v0 }, Landroid/animation/AnimatorSet;->start()V
  :L0
  .line 32
    return-void
.end method

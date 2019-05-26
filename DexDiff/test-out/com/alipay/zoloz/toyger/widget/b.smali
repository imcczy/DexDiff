.class Lcom/alipay/zoloz/toyger/widget/b;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
  .registers 2
  .prologue
  .line 112
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
  .registers 5
  .prologue
  .line 116
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v1 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  .line 117
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->access$200(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)I
    move-result v2
    add-int/lit8 v2, v2, 4
    invoke-static { v1, v2 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->access$202(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;I)I
  .line 118
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mUploadProgressBar:Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->access$200(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)I
    move-result v2
    invoke-virtual { v1, v2 }, Lcom/alipay/zoloz/toyger/widget/UploadProgressBar;->setProgressAngle(I)V
  .line 121
    const/16 v1, 30
    if-ne v1, v0, :L0
  .line 122
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  .line 123
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/b;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    const/4 v1, 0
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  :L0
  .line 125
    return-void
.end method

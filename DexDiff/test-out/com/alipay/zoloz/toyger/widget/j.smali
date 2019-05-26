.class Lcom/alipay/zoloz/toyger/widget/j;
.super Ljava/lang/Object;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.source "SourceFile"

.field final synthetic a:I

.field final synthetic b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;I)V
  .registers 3
  .prologue
  .line 242
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iput p2, p0, Lcom/alipay/zoloz/toyger/widget/j;->a:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
  .registers 5
  .prologue
  .line 246
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iget-object v2, v2, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v2 }, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->access$002(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;I)I
  .line 247
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setProgress(I)V
  .line 249
    iget v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->a:I
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)I
    move-result v1
    if-ne v0, v1, :L0
  .line 250
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    const/4 v1, 0
    iput-boolean v1, v0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mIsShowProcess:Z
  .line 251
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-virtual { v0 }, Landroid/animation/ValueAnimator;->cancel()V
  .line 252
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/j;->b:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    const/4 v1, 0
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mValueAnimator:Landroid/animation/ValueAnimator;
  :L0
  .line 254
    return-void
.end method

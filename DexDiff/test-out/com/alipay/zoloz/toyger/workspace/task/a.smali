.class Lcom/alipay/zoloz/toyger/workspace/task/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)V
  .registers 2
  .prologue
  .line 156
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
    const/16 v2, 8
  .line 159
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->access$000(Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;)Z
    move-result v0
    if-nez v0, :L0
  .line 169
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setSoundButton(I)V
  .line 170
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getCircleUploadPattern()Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->setVisibility(I)V
  .line 171
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setCloseButtonVisible(I)V
  .line 172
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTopTip()Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual { v0, v2 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 173
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    const-string v1, "#414146"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setRoundColor(I)V
  .line 174
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    const-string v1, "#414146"
    invoke-static { v1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setCricleProgressColor(I)V
  .line 176
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getOuterBakRoundProgressBar()Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;
    move-result-object v0
    invoke-virtual { v0, v2 }, Lcom/alipay/zoloz/toyger/widget/RoundProgressBar;->setVisibility(I)V
  .line 177
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    if-eqz v0, :L0
  .line 178
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/task/a;->a:Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->mBestToygerFrame:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v1, v1, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->bestBitmap:Landroid/graphics/Bitmap;
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/task/CherryCaptureTask;->showBestFrameBlur(Landroid/graphics/Bitmap;)V
  :L0
  .line 181
    return-void
.end method

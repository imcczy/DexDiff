.class Lcom/alipay/zoloz/toyger/workspace/task/d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;Landroid/graphics/Bitmap;)V
  .registers 3
  .prologue
  .line 142
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->a:Landroid/graphics/Bitmap;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 145
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    if-eqz v0, :L0
  .line 146
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 147
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mToygerCirclePattern:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->b:Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;
    iget-object v2, v2, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->mContext:Landroid/content/Context;
  .line 148
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/task/d;->a:Landroid/graphics/Bitmap;
    invoke-direct { v1, v2, v3 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
  .line 147
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L0
  .line 150
    return-void
.end method

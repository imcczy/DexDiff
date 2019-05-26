.class Lcom/alipay/zoloz/toyger/workspace/j;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;)V
  .registers 3
  .prologue
  .line 721
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/j;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/j;->a:Landroid/graphics/Bitmap;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L2 } :L3
  .registers 5
  :L0
  .prologue
  .line 725
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/j;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    if-eqz v0, :L1
  .line 726
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/j;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 727
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/j;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/j;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 728
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$400(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/j;->a:Landroid/graphics/Bitmap;
    invoke-direct { v1, v2, v3 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
  .line 727
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 730
    const-string v0, "onHighQualityFrame \u663e\u793a\u6210\u529f"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  :L2
  .line 735
    return-void
  :L3
  .line 731
    move-exception v0
  .line 733
    const-string v1, "\u663e\u793aHighQualityFrame\u51fa\u73b0\u5f02\u5e38\uff01"
    invoke-static { v1, v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    goto :L2
.end method

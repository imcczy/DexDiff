.class Lcom/alipay/zoloz/toyger/workspace/l;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/graphics/Bitmap;)V
  .registers 3
  .prologue
  .line 964
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/l;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/l;->a:Landroid/graphics/Bitmap;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Throwable; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .prologue
  .line 968
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/l;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    if-eqz v0, :L1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/l;->a:Landroid/graphics/Bitmap;
    if-eqz v0, :L1
  .line 969
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/l;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 970
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/l;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getGuassianBackground()Landroid/widget/ImageView;
    move-result-object v0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/l;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 971
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$400(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/workspace/l;->a:Landroid/graphics/Bitmap;
    invoke-direct { v1, v2, v3 }, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
  .line 970
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
  .line 976
    return-void
  :L2
  .line 973
    move-exception v0
  .line 974
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    goto :L1
.end method

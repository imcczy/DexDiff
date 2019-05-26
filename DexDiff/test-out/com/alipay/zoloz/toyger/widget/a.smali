.class Lcom/alipay/zoloz/toyger/widget/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
  .registers 2
  .prologue
  .line 79
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/a;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 83
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/a;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->mContext:Landroid/content/Context;
    if-eqz v0, :L0
  .line 84
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/a;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->access$000(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;)V
  .line 85
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/a;->a:Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;->access$102(Lcom/alipay/zoloz/toyger/widget/CircleUploadPattern;Z)Z
  :L0
  .line 87
    return-void
.end method

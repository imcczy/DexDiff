.class Lcom/alipay/zoloz/toyger/widget/i;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
  .registers 2
  .prologue
  .line 217
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/i;->a:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 221
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/i;->a:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    const/4 v1, 0
    iput-boolean v1, v0, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->mIsShowProcess:Z
  .line 222
    return-void
.end method

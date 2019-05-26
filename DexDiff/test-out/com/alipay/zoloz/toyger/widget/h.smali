.class Lcom/alipay/zoloz/toyger/widget/h;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;)V
  .registers 2
  .prologue
  .line 111
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/h;->a:Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .prologue
  .line 115
    const-string v0, "mBottomRightTip"
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 116
    return-void
.end method

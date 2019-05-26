.class Lcom/alipay/zoloz/toyger/workspace/b;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;)V
  .registers 2
  .prologue
  .line 136
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/b;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 140
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/b;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->getScreenBrightness(Landroid/content/Context;)I
    move-result v0
  .line 141
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/b;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;)I
    move-result v1
    if-le v1, v0, :L0
  .line 142
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/b;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/b;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;)I
    move-result v1
    invoke-static { v0, v1 }, Lcom/alipay/mobile/security/bio/utils/ScreenUtil;->setScreenBrightness(Landroid/app/Activity;I)V
  :L0
  .line 144
    return-void
.end method

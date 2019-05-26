.class Lcom/alipay/zoloz/toyger/workspace/h;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/bean/ToygerFrame;)V
  .registers 3
  .prologue
  .line 305
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/h;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/h;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 308
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/h;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    if-eqz v0, :L0
  .line 309
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/h;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getAlgorithmInfoPattern()Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/h;->b:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/h;->a:Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
    iget-object v2, v2, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
  .line 310
    invoke-static { v1, v2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$300(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;
    move-result-object v1
  .line 309
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/AlgorithmInfoPattern;->showInfo(Lcom/alipay/biometrics/ui/widget/AlgorithmInfo;)V
  :L0
  .line 312
    return-void
.end method

.class Lcom/alipay/zoloz/toyger/workspace/p;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:I

.field final synthetic b:Lcom/alipay/zoloz/toyger/workspace/m;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/m;I)V
  .registers 3
  .prologue
  .line 1160
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/p;->b:Lcom/alipay/zoloz/toyger/workspace/m;
    iput p2, p0, Lcom/alipay/zoloz/toyger/workspace/p;->a:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 4
  .prologue
  .line 1163
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/p;->b:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/p;->b:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    if-eqz v0, :L0
  .line 1164
    const-string v0, "Cherry"
    const-string v1, "Cherry"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
  .line 1170
    return-void
  :L1
  .line 1168
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/p;->b:Lcom/alipay/zoloz/toyger/workspace/m;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/m;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$200(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;)Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerCirclePattern;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    iget v2, p0, Lcom/alipay/zoloz/toyger/workspace/p;->a:I
    div-int/lit16 v2, v2, 1000
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "S"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/biometrics/ui/widget/TitleBar;->setTimeOut(Ljava/lang/String;)V
    goto :L0
.end method

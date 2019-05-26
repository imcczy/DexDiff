.class public Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;
.super Lcom/alipay/mobile/security/bio/workspace/BioFragment;
.implements Lcom/alipay/zoloz/toyger/interfaces/ToygerEvent;
.source "SourceFile"

.field mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 13
    invoke-direct { p0 }, Lcom/alipay/mobile/security/bio/workspace/BioFragment;-><init>()V
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
  .catch Ljava/lang/ClassCastException; { :L0 .. :L1 } :L2
  .registers 6
  .prologue
  .line 19
    invoke-super { p0, p1 }, Lcom/alipay/mobile/security/bio/workspace/BioFragment;->onAttach(Landroid/app/Activity;)V
  :L0
  .line 22
    move-object v0, p1
    check-cast v0, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    move-object v1, v0
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
  :L1
  .line 26
    return-void
  :L2
  .line 23
    move-exception v1
  .line 24
    new-instance v1, Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, " must be ToygerCallback"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2 }, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method public onWindowFocusChanged(Z)Z
  .registers 3
  .prologue
  .line 35
    const/4 v0, 0
    return v0
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
  .registers 4
  .prologue
  .line 30
    const/4 v0, 0
    return v0
.end method

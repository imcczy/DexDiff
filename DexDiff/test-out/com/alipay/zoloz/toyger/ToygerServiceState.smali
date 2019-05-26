.class public Lcom/alipay/zoloz/toyger/ToygerServiceState;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final static FINISH:I = 5

.field public final static INIT:I = 2

.field public final static LOADED:I = 1

.field public final static READY:I = 3

.field public final static RUNNING:I = 4

.field private final static TAG:Ljava/lang/String; = "TOYGER"

.field public final static UNLOAD:I

.field private mToygerServiceState:I

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 41
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 93
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    return-void
.end method

.method public isFinish()Z
  .registers 3
  .prologue
  .line 261
    iget v0, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    const/4 v1, 5
    if-ne v0, v1, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public isLoaded()Z
  .registers 3
  .prologue
    const/4 v0, 1
  .line 243
    iget v1, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    if-ne v1, v0, :L1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public isReady()Z
  .registers 3
  .prologue
  .line 225
    iget v0, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    const/4 v1, 3
    if-ne v0, v1, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public isRunning()Z
  .registers 3
  .prologue
  .line 234
    iget v0, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    const/4 v1, 4
    if-ne v0, v1, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public isUnLoad()Z
  .registers 2
  .prologue
  .line 252
    iget v0, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    if-nez v0, :L1
    const/4 v0, 1
  :L0
    return v0
  :L1
    const/4 v0, 0
    goto :L0
.end method

.method public set(I)V
  .registers 5
  .prologue
  .line 96
    iput p1, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
  .line 97
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ToygerServiceState.set() : newState="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget v2, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 98
    return-void
.end method

.method public update(I)Z
  .registers 7
  .prologue
    const/4 v0, 1
  .line 107
    iget v2, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
  .line 109
    const/4 v1, 0
  .line 111
    packed-switch v2, :L13
    move v0, v1
  :L0
  .line 206
    if-eqz v0, :L12
  .line 207
    iput p1, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
  .line 209
    const-string v1, "TOYGER"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "ToygerServiceState.update() : oldState="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", newState="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", mToygerServiceState="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget v3, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  :L1
  .line 216
    return v0
  :L2
  .line 113
    packed-switch p1, :L14
    move v0, v1
  .line 123
    goto :L0
  :L3
  .line 128
    packed-switch p1, :L15
  :L4
    move v0, v1
  .line 138
    goto :L0
  :L5
  .line 143
    packed-switch p1, :L16
  :L6
    move v0, v1
  .line 153
    goto :L0
  :L7
  .line 158
    sparse-switch p1, :L17
    move v0, v1
  .line 168
    goto :L0
  :L8
  .line 173
    packed-switch p1, :L18
  :L9
    move v0, v1
  .line 183
    goto :L0
  :L10
  .line 188
    packed-switch p1, :L19
  :L11
    move v0, v1
  .line 198
    goto :L0
  :L12
  .line 212
    const-string v1, "TOYGER"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "ToygerServiceState.update() : oldState="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", newState="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, ", mToygerServiceState="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget v3, p0, Lcom/alipay/zoloz/toyger/ToygerServiceState;->mToygerServiceState:I
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  .line 111
  .line 113
  .line 128
  .line 143
  .line 158
  .line 173
  .line 188
  :L13
  .packed-switch 0
    :L2
    :L3
    :L5
    :L7
    :L8
    :L10
  .end packed-switch
  :L14
  .packed-switch 1
    :L0
  .end packed-switch
  :L15
  .packed-switch 0
    :L0
    :L4
    :L0
  .end packed-switch
  :L16
  .packed-switch 0
    :L0
    :L6
    :L6
    :L0
  .end packed-switch
  :L17
  .sparse-switch
    0 -> :L0
    4 -> :L0
  .end sparse-switch
  :L18
  .packed-switch 0
    :L0
    :L9
    :L9
    :L0
    :L9
    :L0
  .end packed-switch
  :L19
  .packed-switch 0
    :L0
    :L11
    :L11
    :L0
  .end packed-switch
.end method

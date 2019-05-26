.class public Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;
.super Landroid/os/Handler;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "WorkspaceHandler"
.end annotation

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Landroid/os/Looper;)V
  .registers 3
  .prologue
  .line 864
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;->this$0:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
  .line 865
    invoke-direct { p0, p2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
  .line 866
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 4
  .prologue
  .line 870
    invoke-super { p0, p1 }, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
  .line 871
    iget v0, p1, Landroid/os/Message;->what:I
  .line 872
    packed-switch v0, :L3
  :L0
  .line 883
    return-void
  :L1
  .line 874
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;->this$0:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    sget-object v1, Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;->UPLOADING:Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->access$702(Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;)Lcom/alipay/zoloz/toyger/workspace/assist/WorkState;
    goto :L0
  :L2
  .line 877
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;->this$0:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    const/4 v1, 1
    iput-boolean v1, v0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->mIsBeUploadPage:Z
  .line 878
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace$WorkspaceHandler;->this$0:Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerWorkspace;->stopTimerTask()V
    goto :L0
  .line 872
  :L3
  .packed-switch 1
    :L1
    :L2
  .end packed-switch
.end method

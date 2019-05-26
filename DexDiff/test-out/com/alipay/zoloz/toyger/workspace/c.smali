.class Lcom/alipay/zoloz/toyger/workspace/c;
.super Landroid/os/Handler;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;

.method constructor <init>(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)V
  .registers 2
  .prologue
  .line 117
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-direct { p0 }, Landroid/os/Handler;-><init>()V
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
  .registers 5
  .prologue
  .line 121
    invoke-super { p0, p1 }, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
  .line 122
    iget v0, p1, Landroid/os/Message;->what:I
  .line 123
    packed-switch v0, :L6
  :L0
  .line 158
    return-void
  :L1
  .line 126
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    move-result-object v0
    const-string v1, "clickStartCapture"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    new-instance v1, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;-><init>()V
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->forward(Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V
    goto :L0
  :L2
  .line 132
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Landroid/webkit/WebView;
    move-result-object v0
    const-string v1, "file:///android_asset/html/nav/facewelcome.html"
  .line 133
    invoke-virtual { v0, v1 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    goto :L0
  :L3
  .line 137
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Landroid/webkit/WebView;
    move-result-object v0
    const-string v1, "file:///android_asset/html/nav/facewelcome.html"
  .line 138
    invoke-virtual { v0, v1 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    goto :L0
  :L4
  .line 143
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    move-result-object v0
    const-string v1, "exitGuidePage"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 144
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/16 v1, 202
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(I)V
  .line 145
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    iget-object v0, v0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/4 v1, 0
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->finishActivity(Z)V
    goto :L0
  :L5
  .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    check-cast v0, Ljava/lang/String;
  .line 149
    if-eqz v0, :L0
  .line 150
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 151
    const-string v2, "h5_guide_log"
    invoke-interface { v1, v2, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 152
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/c;->a:Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    move-result-object v0
    const-string v2, "fromH5"
    invoke-virtual { v0, v2, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V
    goto :L0
  .line 123
  :L6
  .packed-switch 0
    :L1
    :L2
    :L3
    :L4
    :L5
  .end packed-switch
.end method

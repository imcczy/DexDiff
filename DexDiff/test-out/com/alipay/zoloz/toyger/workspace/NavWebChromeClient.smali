.class public Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"

.field public mMainHandler:Landroid/os/Handler;

.method public constructor <init>(Landroid/os/Handler;)V
  .registers 2
  .prologue
  .line 16
    invoke-direct { p0 }, Landroid/webkit/WebChromeClient;-><init>()V
  .line 17
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
  .line 18
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .registers 10
  .prologue
    const/4 v0, 1
  .line 29
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "onJsPrompt:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 30
    const-string v1, "face_auth"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L1
  .line 31
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 32
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 33
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L0
  .line 48
    return v0
  :L1
  .line 36
    const-string v1, "navi_close"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
  .line 37
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 38
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 39
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    const/4 v3, 3
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L0
  :L2
  .line 41
    const-string v1, "guide_log"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
  .line 42
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 44
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 45
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;->mMainHandler:Landroid/os/Handler;
    const/4 v3, 4
    invoke-virtual { v2, v3, p4 }, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L0
  :L3
  .line 48
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    move-result v0
    goto :L0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
  .registers 3
  .prologue
  .line 23
    invoke-super { p0, p1, p2 }, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
  .line 24
    return-void
.end method

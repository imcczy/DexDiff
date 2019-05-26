.class public Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "WebChromeClient"
.end annotation

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)V
  .registers 2
  .prologue
  .line 34
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-direct { p0 }, Landroid/webkit/WebChromeClient;-><init>()V
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .registers 10
  .prologue
    const/4 v0, 1
  .line 54
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
  .line 56
    const-string v1, "face_auth"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L1
  .line 57
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 58
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 59
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
  :L0
  .line 75
    return v0
  :L1
  .line 61
    const-string v1, "navi_close"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L2
  .line 62
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 63
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 64
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v2
    const/4 v3, 3
    invoke-virtual { v2, v3 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L0
  :L2
  .line 66
    const-string v1, "guide_log"
    invoke-virtual { v1, p3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
  .line 67
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
  .line 68
    invoke-virtual { p5 }, Landroid/webkit/JsPromptResult;->cancel()V
  .line 69
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v1
    const/4 v2, 4
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v1
  .line 70
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
  .line 71
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v2 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
    move-result-object v2
    invoke-virtual { v2, v1 }, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    goto :L0
  :L3
  .line 75
    invoke-super/range { p0 .. p5 }, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    move-result v0
    goto :L0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
  .registers 5
  .prologue
    const/16 v1, 8
  .line 38
    const/16 v0, 100
    if-ne p2, v0, :L1
  .line 39
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/widget/ProgressBar;
    move-result-object v0
    invoke-virtual { v0, v1 }, Landroid/widget/ProgressBar;->setVisibility(I)V
  :L0
  .line 48
    invoke-super { p0, p1, p2 }, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
  .line 49
    return-void
  :L1
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/widget/ProgressBar;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/ProgressBar;->getVisibility()I
    move-result v0
    if-ne v0, v1, :L2
  .line 42
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/widget/ProgressBar;
    move-result-object v0
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/ProgressBar;->setVisibility(I)V
  :L2
  .line 45
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;->this$0:Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->access$000(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/widget/ProgressBar;
    move-result-object v0
    invoke-virtual { v0, p2 }, Landroid/widget/ProgressBar;->setProgress(I)V
    goto :L0
.end method

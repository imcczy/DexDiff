.class public Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

.field public final static HANDLE_MSG_LOAD_LOCAL_URL:I = 1

.field public final static HANDLE_MSG_LOAD__URL_FAIL:I = 2

.field public final static HANDLE_MSG_RECORD:I = 4

.field public final static HANDLE_MSG_START_SAMPLE:I = 0

.field public final static HANDLE_MSG_STOP_SAMPLE:I = 3

.field mHandler:Landroid/os/Handler;

.field private mUserName:Ljava/lang/String;

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
  .registers 7
  .prologue
    const/4 v2, 1
  .line 25
    invoke-direct { p0 }, Landroid/webkit/WebViewClient;-><init>()V
  .line 26
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mUserName:Ljava/lang/String;
  .line 27
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
  .line 28
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
    invoke-virtual { v0, v2 }, Landroid/os/Handler;->removeMessages(I)V
  .line 29
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    move-result-object v1
    const-wide/16 v2, 1500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
  .line 30
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
  .registers 5
  .prologue
  .line 40
    invoke-super { p0, p1, p2 }, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mUserName:Ljava/lang/String;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
  .line 42
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "javascript:setUserName('"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mUserName:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "')"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
  :L0
  .line 45
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->removeMessages(I)V
  .line 46
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
  .registers 4
  .prologue
  .line 34
    invoke-super { p0, p1, p2, p3 }, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
  .line 36
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
  .registers 7
  .prologue
  .line 51
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
  .line 52
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/NavWebViewClient;->mHandler:Landroid/os/Handler;
    const/4 v1, 2
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->sendEmptyMessage(I)Z
  .line 53
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
  .registers 4
  .prologue
  .line 59
    invoke-super { p0, p1, p2, p3 }, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
  .line 60
    return-void
.end method

.class public Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;
.super Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;
.source "SourceFile"

.field private mABTest:Ljava/lang/String;

.field private mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;

.field private mMainHandler:Landroid/os/Handler;

.field private mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 29
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;-><init>()V
  .line 32
    const-string v0, "a"
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mABTest:Ljava/lang/String;
  .line 117
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/c;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/workspace/c;-><init>(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mMainHandler:Landroid/os/Handler;
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .registers 2
  .prologue
  .line 29
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;)Landroid/webkit/WebView;
  .registers 2
  .prologue
  .line 29
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mWebView:Landroid/webkit/WebView;
    return-object v0
.end method

.method private initWebSetting(Landroid/webkit/WebView;)V
  .registers 6
  .prologue
    const/4 v3, 1
    const/4 v2, 0
  .line 68
    const-string v0, "searchBoxJavaBridge_"
    invoke-virtual { p1, v0 }, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
  .line 69
    const-string v0, "accessibility"
    invoke-virtual { p1, v0 }, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
  .line 70
    const-string v0, "accessibilityTraversal"
    invoke-virtual { p1, v0 }, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
  .line 71
    invoke-virtual { p1 }, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    move-result-object v0
  .line 72
    invoke-virtual { v0, v3 }, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
  .line 73
    const/4 v1, -1
    invoke-virtual { v0, v1 }, Landroid/webkit/WebSettings;->setCacheMode(I)V
  .line 74
    invoke-virtual { v0, v3 }, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
  .line 75
    invoke-virtual { v0, v3 }, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
  .line 76
    invoke-virtual { v0, v2 }, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
  .line 77
    invoke-virtual { v0, v2 }, Landroid/webkit/WebSettings;->setSavePassword(Z)V
  .line 78
    invoke-virtual { v0, v2 }, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
  .line 79
    invoke-virtual { v0, v2 }, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
  .line 80
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mMainHandler:Landroid/os/Handler;
    invoke-direct { v0, v1 }, Lcom/alipay/zoloz/toyger/workspace/NavWebChromeClient;-><init>(Landroid/os/Handler;)V
    invoke-virtual { p1, v0 }, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
  .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L4
  .registers 6
  .prologue
  .line 40
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    const-class v1, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    invoke-virtual { v0, v1 }, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
  .line 41
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "enterGuidePage"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  :L0
  .line 45
    sget v0, Lcom/alipay/zoloz/toyger/R$layout;->toyger_circle_navigate:I
    const/4 v1, 0
    invoke-virtual { p1, v0, p2, v1 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
  :L1
    move-result-object v1
  .line 52
    sget v0, Lcom/alipay/zoloz/toyger/R$id;->face_circle_nav_webView:I
    invoke-virtual { v1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/webkit/WebView;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mWebView:Landroid/webkit/WebView;
  .line 55
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    invoke-interface { v0 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->getRemoteConfig()Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
  .line 57
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mFaceRemoteConfig:Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/workspace/FaceRemoteConfig;->getNavi()Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->getUrl()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
  .line 58
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L2
  .line 59
    const-string v0, "https://render.alipay.com/p/f/fd-j8l9yjja/index.html"
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
  :L2
  .line 62
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mWebView:Landroid/webkit/WebView;
    invoke-direct { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->initWebSetting(Landroid/webkit/WebView;)V
    move-object v0, v1
  :L3
  .line 64
    return-object v0
  :L4
  .line 47
    move-exception v0
  .line 48
    new-instance v0, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerCaptureFragment;-><init>()V
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->forward(Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V
  .line 49
    new-instance v0, Landroid/view/View;
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
    goto :L3
.end method

.method public onResume()V
  .registers 6
  .prologue
    const/4 v2, 2
    const/4 v4, 1
    const/4 v3, 0
  .line 85
    invoke-super { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->onResume()V
  .line 87
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mABTest:Ljava/lang/String;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
    invoke-virtual { p0 }, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z
    move-result v0
    if-nez v0, :L2
  :L0
  .line 89
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mWebView:Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/html/nav/facewelcome.html"
    invoke-virtual { v0, v1 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
  :L1
  .line 106
    return-void
  :L2
  .line 92
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L1
  .line 93
    const-string v0, ""
  .line 94
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
    const-string v1, "?"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L4
  .line 95
    const-string v0, "%1$s&os=android&abtest=%2$s"
    new-array v1, v2, [Ljava/lang/Object;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
    aput-object v2, v1, v3
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mABTest:Ljava/lang/String;
    aput-object v2, v1, v4
    invoke-static { v0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  :L3
  .line 99
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "url:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
  .line 100
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mWebView:Landroid/webkit/WebView;
    invoke-virtual { v1, v0 }, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    goto :L1
  :L4
  .line 97
    const-string v0, "%1$s?os=android&abtest=%2$s"
    new-array v1, v2, [Ljava/lang/Object;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mUrl:Ljava/lang/String;
    aput-object v2, v1, v3
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mABTest:Ljava/lang/String;
    aput-object v2, v1, v4
    invoke-static { v0, v1 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    goto :L3
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
  .registers 5
  .prologue
  .line 110
    const/4 v0, 4
    if-ne p1, v0, :L0
  .line 111
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerRecordService:Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;
    const-string v1, "exitGuidePage"
    invoke-virtual { v0, v1 }, Lcom/alipay/zoloz/toyger/extservice/record/ToygerRecordService;->write(Ljava/lang/String;)V
  .line 112
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/workspace/ToygerNavigationFragment;->mToygerCallback:Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;
    const/16 v1, 202
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/toyger/interfaces/ToygerCallback;->sendResponse(I)V
  :L0
  .line 114
    invoke-super { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/workspace/ToygerFragment;->ontActivityEvent(ILandroid/view/KeyEvent;)Z
    move-result v0
    return v0
.end method

.class public Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;
  }
.end annotation

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 8
  .prologue
    const/4 v4, 0
  .line 23
    invoke-direct { p0, p1, p2 }, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .line 24
    new-instance v0, Landroid/widget/ProgressBar;
    const/4 v1, 0
    const v2, 16842872
    invoke-direct { v0, p1, v1, v2 }, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
  .line 25
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v2, -1
    const/4 v3, 3
    invoke-direct { v1, v2, v3, v4, v4 }, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V
    invoke-virtual { v0, v1 }, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 26
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->addView(Landroid/view/View;)V
  .line 27
    new-instance v0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;
    invoke-direct { v0, p0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView$WebChromeClient;-><init>(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)V
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
  .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/widget/ProgressBar;
  .registers 2
  .prologue
  .line 17
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;)Landroid/os/Handler;
  .registers 2
  .prologue
  .line 17
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mHandler:Landroid/os/Handler;
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
  .registers 7
  .prologue
  .line 82
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual { v0 }, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;
  .line 83
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I
  .line 84
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I
  .line 85
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual { v1, v0 }, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 86
    invoke-super { p0, p1, p2, p3, p4 }, Landroid/webkit/WebView;->onScrollChanged(IIII)V
  .line 87
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
  .registers 2
  .prologue
  .line 31
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/ToygerProgressWebView;->mHandler:Landroid/os/Handler;
  .line 32
    return-void
.end method

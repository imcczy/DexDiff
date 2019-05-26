.class Lcom/alipay/zoloz/toyger/widget/d;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;

.method constructor <init>(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)V
  .registers 2
  .prologue
  .line 122
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/widget/d;->a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 5
  .prologue
  .line 125
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/d;->a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->access$000(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->dismiss()V
  .line 126
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/d;->a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->access$100(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Landroid/content/DialogInterface$OnClickListener;
    move-result-object v0
    if-eqz v0, :L0
  .line 127
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/widget/d;->a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    invoke-static { v0 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->access$100(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Landroid/content/DialogInterface$OnClickListener;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/widget/d;->a:Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    invoke-static { v1 }, Lcom/alipay/zoloz/toyger/widget/GenenalDialog;->access$000(Lcom/alipay/zoloz/toyger/widget/GenenalDialog;)Lcom/alipay/zoloz/toyger/widget/GenenalDialog;
    move-result-object v1
    const/4 v2, -1
    invoke-interface { v0, v1, v2 }, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
  :L0
  .line 129
    return-void
.end method

.class Lcom/alipay/zoloz/toyger/extservice/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.field final synthetic c:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

.field final synthetic d:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;

.method constructor <init>(Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;Landroid/graphics/Rect;Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .registers 5
  .prologue
  .line 121
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/extservice/a;->d:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/extservice/a;->a:Landroid/graphics/Rect;
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/extservice/a;->b:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/extservice/a;->c:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 5
  .prologue
  .line 124
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/extservice/a;->d:Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/extservice/a;->a:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/extservice/a;->b:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget-object v2, v2, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    iget-object v3, p0, Lcom/alipay/zoloz/toyger/extservice/a;->c:Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
    iget-object v3, v3, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;->access$000(Lcom/alipay/zoloz/toyger/extservice/ToygerIspService;Landroid/graphics/Rect;[B[S)V
  .line 125
    return-void
.end method

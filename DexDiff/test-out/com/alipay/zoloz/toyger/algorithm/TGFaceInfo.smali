.class public Lcom/alipay/zoloz/toyger/algorithm/TGFaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

.field public attr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;

.field public frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 10
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V
  .registers 3
  .prologue
  .line 11
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 12
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 13
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceInfo;->attr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
  .line 14
    return-void
.end method

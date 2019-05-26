.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;
.super Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lcom/alipay/zoloz/toyger/ToygerBiometricInfo",
    "<",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;",
    ">;"
  }
.end annotation

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 11
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V
  .registers 3
  .prologue
  .line 12
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;-><init>()V
  .line 13
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 14
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;
  .line 15
    return-void
.end method

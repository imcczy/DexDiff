.class public Lcom/alipay/zoloz/toyger/algorithm/Toyger;
.super Ljava/lang/Object;
.source "SourceFile"

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 18
    const-string v0, "toyger"
    invoke-static { v0 }, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
  .line 19
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static native config(Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;Lcom/alipay/zoloz/toyger/algorithm/ToygerConfig;)V
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native init(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
.end method

.method public static native processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
      ">;",
      "Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;",
      "Lcom/alipay/zoloz/toyger/ToygerAttr;",
      ")V"
    }
  .end annotation
.end method

.method public static native release()V
.end method

.method public static native reset()V
.end method

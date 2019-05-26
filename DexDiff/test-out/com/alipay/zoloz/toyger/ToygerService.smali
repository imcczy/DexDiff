.class public abstract Lcom/alipay/zoloz/toyger/ToygerService;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<C::",
    "Lcom/alipay/zoloz/toyger/ToygerCallback;",
    "State::",
    "Lcom/alipay/zoloz/toyger/ToygerState;",
    "Attr::",
    "Lcom/alipay/zoloz/toyger/ToygerAttr;",
    "Info:",
    "Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;",
    "AlgorithmConfig:",
    "Lcom/alipay/zoloz/toyger/ToygerAlgorithmConfig;",
    ">",
    "Ljava/lang/Object;",
    "Lcom/alipay/zoloz/toyger/algorithm/IToygerDelegate",
    "<TState;TAttr;TInfo;>;"
  }
.end annotation

.field public final static ASSET_DOC:Ljava/lang/String; = "zdoc_client.bin"

.field public final static ASSET_FACE:Ljava/lang/String; = "toyger.dat"

.field public final static ASSET_LICENSE:Ljava/lang/String; = "toyger.license"

.field public final static KEY_DOC_FRAME_RECT:Ljava/lang/String; = "docframerect"

.field public final static KEY_IS_MIRROR:Ljava/lang/String; = "is_mirror"

.field public final static KEY_META_SERIALIZER:Ljava/lang/String; = "meta_serializer"

.field public final static KEY_PUBLIC_KEY:Ljava/lang/String; = "pubkey"

.field public final static KEY_RES_9_CONTENT:Ljava/lang/String; = "content"

.field public final static KEY_RES_9_IS_UTF8:Ljava/lang/String; = "isUTF8"

.field public final static KEY_RES_9_KEY:Ljava/lang/String; = "key"

.field public final static TAG:Ljava/lang/String; = "TOYGER"

.field protected mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "TC;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 23
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static preLoad(Landroid/content/Context;)Z
  .registers 2
  .prologue
  .line 93
    const/4 v0, 0
    return v0
.end method

.method public handleAlignDepthPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
  .registers 3
  .prologue
  .line 137
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    invoke-interface { v0, p1 }, Lcom/alipay/zoloz/toyger/ToygerCallback;->onAlignDepthPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    move-result-object v0
  .line 138
    return-object v0
.end method

.method public abstract handleCaptureCompleted(ILjava/util/List;Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(I",
      "Ljava/util/List",
      "<TInfo;>;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)V"
    }
  .end annotation
.end method

.method public handleEventTriggered(ILjava/lang/String;)V
  .registers 6
  .prologue
  .line 148
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "handleEventTriggered() eventCode="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", message="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 149
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/ToygerService;->mToygerCallback:Lcom/alipay/zoloz/toyger/ToygerCallback;
    const/4 v1, 0
    invoke-interface { v0, p1, v1 }, Lcom/alipay/zoloz/toyger/ToygerCallback;->onEvent(ILjava/util/Map;)Z
  .line 150
    return-void
.end method

.method public abstract handleInfoReady(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
      "TAttr;)V"
    }
  .end annotation
.end method

.method public handleLog(ILjava/lang/String;[B)V
  .registers 7
  .prologue
  .line 143
    const-string v0, "TOYGER"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "handleLog() logLevel="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ", log="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v0, v1 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 144
    return-void
.end method

.method public abstract handleStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TState;TAttr;)V"
    }
  .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/ToygerCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "TC;",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)Z"
    }
  .end annotation
.end method

.method public abstract processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/algorithm/TGFrame;",
      ">;",
      "Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;",
      ")Z"
    }
  .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

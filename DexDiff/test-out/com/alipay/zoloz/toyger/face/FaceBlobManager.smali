.class public abstract Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
.super Lcom/alipay/zoloz/toyger/blob/BlobManager;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Lcom/alipay/zoloz/toyger/blob/BlobManager",
    "<",
    "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
    ">;"
  }
.end annotation

.field protected final static MONITOR_COMPRESS_RATE:I = 15

.field protected final static MONITOR_IMAGE_WIDTH:I = 160

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 21
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V
  .registers 4
  .prologue
  .line 23
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V
  .line 24
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
  .line 25
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->pubkey:Ljava/lang/String;
    invoke-direct { v0, v1 }, Lcom/alipay/zoloz/toyger/blob/CryptoManager;-><init>(Ljava/lang/String;)V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;
  .line 26
    return-void
.end method

.method public static convertFaceRegion(Landroid/graphics/RectF;IIIZ)Landroid/graphics/Rect;
  .registers 8
  .prologue
  .line 54
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 55
    iget v1, p0, Landroid/graphics/RectF;->left:F
    int-to-float v2, p1
    mul-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v0, Landroid/graphics/Rect;->left:I
  .line 56
    iget v1, p0, Landroid/graphics/RectF;->right:F
    int-to-float v2, p1
    mul-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v0, Landroid/graphics/Rect;->right:I
  .line 57
    iget v1, p0, Landroid/graphics/RectF;->top:F
    int-to-float v2, p2
    mul-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v0, Landroid/graphics/Rect;->top:I
  .line 58
    iget v1, p0, Landroid/graphics/RectF;->bottom:F
    int-to-float v2, p2
    mul-float/2addr v1, v2
    float-to-int v1, v1
    iput v1, v0, Landroid/graphics/Rect;->bottom:I
  .line 59
    return-object v0
.end method

.method public abstract addMonitorImage(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
.end method

.method public abstract generateBlob(Ljava/util/List;Ljava/util/Map;)[B
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
      ">;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)[B"
    }
  .end annotation
.end method

.method protected getBlobElemType(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Ljava/lang/String;
  .registers 3
  .prologue
  .line 63
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I
    packed-switch v0, :L4
  .line 71
    const-string v0, ""
  :L0
    return-object v0
  :L1
  .line 65
    const-string v0, "Pano"
    goto :L0
  :L2
  .line 67
    const-string v0, "Dark"
    goto :L0
  :L3
  .line 69
    const-string v0, "Depth"
    goto :L0
  .line 63
  :L4
  .packed-switch 0
    :L1
    :L2
    :L3
  .end packed-switch
.end method

.method public getKey()[B
  .registers 2
  .prologue
  .line 36
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->getAESCypher()[B
    move-result-object v0
    return-object v0
.end method

.method public abstract getMonitorBlob()[B
.end method

.method public abstract isUTF8()Z
.end method

.class public abstract Lcom/alipay/zoloz/toyger/blob/BlobManager;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "<Info:",
    "Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;",
    ">",
    "Ljava/lang/Object;"
  }
.end annotation

.field protected final static BLOB_ELEM_TYPE_DOC:Ljava/lang/String; = "doc"

.field protected final static BLOB_ELEM_TYPE_FACE:Ljava/lang/String; = "face"

.field public final static BLOB_VERSION:Ljava/lang/String; = "1.0"

.field protected final static META_ALGRESULT_BAT:I = 3

.field protected final static META_ALGRESULT_DRAGONFLY:I = 2

.field protected final static META_ALGRESULT_VERIFY:I = 1

.field public final static META_SERIALIZER_JSON:I = 1

.field public final static META_SERIALIZER_PB:I = 2

.field protected final static META_TYPE_DOC:Ljava/lang/String; = "zdoc"

.field protected final static META_TYPE_FACE:Ljava/lang/String; = "zface"

.field public final static SUB_TYPE_DARK:Ljava/lang/String; = "Dark"

.field public final static SUB_TYPE_DEPTH:Ljava/lang/String; = "Depth"

.field public final static SUB_TYPE_DOC_IMAGE:Ljava/lang/String; = "docimage"

.field public final static SUB_TYPE_PANO:Ljava/lang/String; = "Pano"

.field public final static SUB_TYPE_SURVEILLANCE:Ljava/lang/String; = "Surveillance"

.field public final static SUB_TYPE_VERSION:Ljava/lang/String; = "1.0"

.field protected final static TAG:Ljava/lang/String; = "BlobManager"

.field protected config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

.field protected crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 18
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private getFrameMode(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)I
  .registers 3
  .prologue
  .line 115
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I
    packed-switch v0, :L6
  .line 127
    const/4 v0, -1
  :L0
    return v0
  :L1
  .line 117
    const/4 v0, 0
    goto :L0
  :L2
  .line 119
    const/4 v0, 1
    goto :L0
  :L3
  .line 121
    const/4 v0, 2
    goto :L0
  :L4
  .line 123
    const/4 v0, 3
    goto :L0
  :L5
  .line 125
    const/4 v0, 4
    goto :L0
  .line 115
  :L6
  .packed-switch 0
    :L1
    :L2
    :L3
    :L4
    :L5
  .end packed-switch
.end method

.method public abstract generateBlob(Ljava/util/List;Ljava/util/Map;)[B
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<TInfo;>;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;)[B"
    }
  .end annotation
.end method

.method public abstract getKey()[B
.end method

.method public abstract isUTF8()Z
.end method

.method protected processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)[B
  .registers 5
  .prologue
  .line 54
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getCompressRate()F
    move-result v1
    const/high16 v2, 17096
    mul-float/2addr v1, v2
    float-to-int v1, v1
    invoke-virtual { p0, p1, v0, v1 }, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;II)[B
    move-result-object v0
    return-object v0
.end method

.method protected processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;II)[B
  .registers 9
  .prologue
  .line 58
    const/4 v0, 0
  .line 60
    if-eqz p1, :L0
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    if-nez v1, :L2
  :L0
  .line 61
    const-string v1, "BlobManager"
    const-string v2, "BlobManager.processFrame(), frame data is null"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  :L1
  .line 111
    return-object v0
  :L2
  .line 65
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/blob/BlobManager;->getFrameMode(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)I
    move-result v1
  .line 66
    if-gez v1, :L3
  .line 67
    const-string v1, "BlobManager"
    const-string v2, "unsupported frame mode"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L3
  .line 72
    iget-object v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B
    iget v3, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    iget v4, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    invoke-static { v2, v3, v4, v1 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 73
    if-nez v1, :L4
  .line 74
    const-string v1, "BlobManager"
    const-string v2, "failed to encode bitmap"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L4
  .line 79
    iget v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    invoke-static { v1, v2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    move-result-object v1
  .line 80
    if-nez v1, :L5
  .line 81
    const-string v1, "BlobManager"
    const-string v2, "failed to rotate bitmap"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L5
  .line 86
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    if-le v2, p2, :L8
    if-lez p2, :L8
  :L6
  .line 87
    iget v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    if-eq p2, v2, :L7
  .line 88
    invoke-static { v1, p2 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    move-result-object v1
  :L7
  .line 91
    if-nez v1, :L9
  .line 92
    const-string v1, "BlobManager"
    const-string v2, "failed to resize bitmap"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L8
  .line 86
    invoke-virtual { v1 }, Landroid/graphics/Bitmap;->getWidth()I
    move-result p2
    goto :L6
  :L9
  .line 97
    invoke-static { v1, p3 }, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    move-result-object v1
  .line 98
    if-nez v1, :L10
  .line 99
    const-string v1, "BlobManager"
    const-string v2, "failed to jpeg encode"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L10
  .line 104
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;
    invoke-virtual { v2, v1 }, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->encrypt([B)[B
    move-result-object v1
  .line 105
    if-nez v1, :L11
  .line 106
    const-string v1, "BlobManager"
    const-string v2, "failed to encrypt"
    invoke-static { v1, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    goto :L1
  :L11
    move-object v0, v1
  .line 109
    goto :L1
.end method

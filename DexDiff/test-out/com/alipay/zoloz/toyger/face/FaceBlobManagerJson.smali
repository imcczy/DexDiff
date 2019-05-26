.class public Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;
.super Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
.source "SourceFile"

.field private mMonitorBlobElems:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/BlobElem;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 26
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V
  .registers 2
  .prologue
  .line 29
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManager;-><init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V
  .line 30
    return-void
.end method

.method private generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
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
      ">;)",
      "Lcom/alipay/zoloz/toyger/blob/Meta;"
    }
  .end annotation
  .registers 5
  .prologue
  .line 137
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/Meta;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/blob/Meta;-><init>()V
  .line 138
    const-string v1, "zface"
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;
  .line 139
    iput-object p2, v0, Lcom/alipay/zoloz/toyger/blob/Meta;->score:Ljava/util/Map;
  .line 140
    const/4 v1, 1
    iput v1, v0, Lcom/alipay/zoloz/toyger/blob/Meta;->serialize:I
  .line 141
    return-object v0
.end method

.method private generateMonitorBlob(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Lcom/alipay/zoloz/toyger/blob/BlobElem;
  .registers 6
  .prologue
  .line 102
    new-instance v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V
  .line 103
    const-string v0, "face"
    iput-object v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;
  .line 104
    const-string v0, "Surveillance"
    iput-object v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;
  .line 105
    const-string v0, "1.0"
    iput-object v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;
  .line 106
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    if-nez v0, :L2
    const/4 v0, 0
  :L0
    iput v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I
  .line 109
    const/16 v0, 160
    const/16 v2, 15
    invoke-virtual { p0, p1, v0, v2 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;II)[B
    move-result-object v0
    iput-object v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
  .line 110
    iget-object v0, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
    if-nez v0, :L3
  .line 111
    const-string v0, "BlobManager"
    const-string v1, "failed to generate element content"
    invoke-static { v0, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 112
    const/4 v0, 0
  :L1
  .line 115
    return-object v0
  :L2
  .line 106
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v0
    goto :L0
  :L3
  .line 114
    const-string v0, "BlobManager"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "monitor image length:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, v1, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
    array-length v3, v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    move-object v0, v1
  .line 115
    goto :L1
.end method

.method public addMonitorImage(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
  .registers 4
  .prologue
  .line 75
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateMonitorBlob(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Lcom/alipay/zoloz/toyger/blob/BlobElem;
    move-result-object v0
  .line 76
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    if-nez v1, :L0
  .line 77
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
  :L0
  .line 79
    if-eqz v0, :L1
  .line 80
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    invoke-interface { v1, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
  .line 82
    return-void
.end method

.method public generateBlob(Ljava/util/List;Ljava/util/Map;)[B
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
  .registers 9
  .prologue
  .line 34
    invoke-direct { p0, p1, p2 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
    move-result-object v1
  .line 36
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
  .line 37
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L0
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;
  .line 38
    new-instance v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;
    invoke-direct { v4 }, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V
  .line 39
    const-string v5, "face"
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;
  .line 40
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->getBlobElemType(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Ljava/lang/String;
    move-result-object v5
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;
  .line 45
    const-string v5, "1.0"
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;
  .line 46
    const/4 v5, 0
    iput v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I
  .line 49
    iget-object v5, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-virtual { p0, v5 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)[B
    move-result-object v5
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
  .line 50
    iget-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
    if-nez v5, :L2
  .line 51
    const-string v0, "BlobManager"
    const-string v1, "failed to generate element content"
    invoke-static { v0, v1 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
  .line 52
    const/4 v0, 0
  :L1
  .line 70
    return-object v0
  :L2
  .line 56
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->faceInfos:Ljava/util/List;
  .line 57
    iget-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->faceInfos:Ljava/util/List;
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateFaceInfo(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Lcom/alipay/zoloz/toyger/blob/FaceInfo;
    move-result-object v0
    invoke-interface { v5, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 58
    invoke-interface { v2, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L3
  .line 61
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/Blob;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/blob/Blob;-><init>()V
  .line 62
    iput-object v2, v0, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;
  .line 63
    const-string v2, "1.0"
    iput-object v2, v0, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;
  .line 64
    new-instance v2, Lcom/alipay/zoloz/toyger/blob/Content;
    invoke-direct { v2 }, Lcom/alipay/zoloz/toyger/blob/Content;-><init>()V
  .line 65
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;
  .line 66
    iput-object v1, v2, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;
  .line 69
    invoke-static { v2 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 70
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    goto :L1
.end method

.method protected generateFaceInfo(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Lcom/alipay/zoloz/toyger/blob/FaceInfo;
  .registers 8
  .prologue
  .line 119
    new-instance v3, Lcom/alipay/zoloz/toyger/blob/FaceInfo;
    invoke-direct { v3 }, Lcom/alipay/zoloz/toyger/blob/FaceInfo;-><init>()V
  .line 120
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    rem-int/lit16 v0, v0, 180
    if-nez v0, :L3
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
  :L0
  .line 121
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    if-ne v0, v1, :L4
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
  :L1
  .line 122
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    if-le v0, v2, :L5
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    if-lez v2, :L5
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
    invoke-virtual { v2 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
  :L2
  .line 123
    int-to-float v4, v2
    int-to-float v0, v0
    div-float v0, v4, v0
    int-to-float v1, v1
    mul-float/2addr v0, v1
    float-to-int v1, v0
  .line 125
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->region()Landroid/graphics/RectF;
    move-result-object v0
    iget-object v4, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v4, v4, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I
    const/4 v5, 0
    invoke-static { v0, v2, v1, v4, v5 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->convertFaceRegion(Landroid/graphics/RectF;IIIZ)Landroid/graphics/Rect;
    move-result-object v0
    iput-object v0, v3, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->rect:Landroid/graphics/Rect;
  .line 126
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;
    invoke-virtual { v0 }, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;->quality()F
    move-result v0
    iput v0, v3, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->quality:F
  .line 128
    return-object v3
  :L3
  .line 120
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v0, v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I
    goto :L0
  :L4
  .line 121
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I
    goto :L1
  :L5
    move v2, v0
  .line 122
    goto :L2
.end method

.method public getMonitorBlob()[B
  .registers 4
  .prologue
    const/4 v0, 0
  .line 86
    invoke-direct { p0, v0, v0 }, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
    move-result-object v0
  .line 87
    new-instance v1, Lcom/alipay/zoloz/toyger/blob/Blob;
    invoke-direct { v1 }, Lcom/alipay/zoloz/toyger/blob/Blob;-><init>()V
  .line 88
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;
  .line 89
    const-string v2, "1.0"
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;
  .line 90
    new-instance v2, Lcom/alipay/zoloz/toyger/blob/Content;
    invoke-direct { v2 }, Lcom/alipay/zoloz/toyger/blob/Content;-><init>()V
  .line 91
    iput-object v1, v2, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;
  .line 92
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;
  .line 95
    invoke-static { v2 }, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 96
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/FaceBlobManagerJson;->mMonitorBlobElems:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->clear()V
  .line 97
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    return-object v0
.end method

.method public isUTF8()Z
  .registers 2
  .prologue
  .line 133
    const/4 v0, 1
    return v0
.end method

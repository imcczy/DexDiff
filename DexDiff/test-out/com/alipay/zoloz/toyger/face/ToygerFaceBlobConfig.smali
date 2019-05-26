.class public Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
.super Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
.source "SourceFile"

.field public collection:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field public desiredWidth:I

.field public upload_compress_rate:F

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 18
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;-><init>()V
    return-void
.end method

.method public constructor <init>(FILjava/lang/String;)V
  .registers 4
  .prologue
  .line 19
    invoke-direct { p0 }, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;-><init>()V
  .line 20
    iput p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->upload_compress_rate:F
  .line 21
    iput p2, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
  .line 22
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->pubkey:Ljava/lang/String;
  .line 23
    return-void
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
  .registers 4
  .prologue
  .line 36
    const-class v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
    invoke-static { p0, v0 }, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;
  .line 37
    iget v1, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
    if-gtz v1, :L0
  .line 38
    const/16 v1, 1280
    iput v1, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
  :L0
  .line 40
    iget-object v1, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    if-nez v1, :L1
  .line 41
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
  :L1
  .line 43
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->pubkey:Ljava/lang/String;
  .line 44
    return-object v0
.end method

.method public getCompressRate()F
  .registers 2
  .prologue
  .line 27
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->upload_compress_rate:F
    return v0
.end method

.method public getDesiredWidth()Ljava/lang/Integer;
  .registers 2
  .prologue
  .line 32
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    return-object v0
.end method

.method public getMinWidth(I)I
  .registers 3
  .prologue
  .line 51
    iget v0, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
    if-le v0, p1, :L1
  :L0
  .line 54
    return p1
  :L1
    iget p1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
    goto :L0
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 59
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerFaceBlobConfig{upload_compress_rate="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->upload_compress_rate:F
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", desiredWidth="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->desiredWidth:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", collection="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;->collection:Ljava/util/List;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

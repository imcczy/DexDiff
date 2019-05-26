.class public Lcom/alipay/zoloz/toyger/upload/UploadContent;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final content:[B

.field public final contentSig:[B

.field public final isUTF8:Z

.method public constructor <init>([B[BZ)V
  .registers 4
  .prologue
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 18
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B
  .line 19
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B
  .line 20
    iput-boolean p3, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->isUTF8:Z
  .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 25
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "UploadContent{content="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B
    if-nez v0, :L2
    const-string v0, "null"
  :L0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", contentSig="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B
    if-nez v0, :L3
    const-string v0, "null"
  :L1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", isUTF8="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/toyger/upload/UploadContent;->isUTF8:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L2
    const-string v0, "***"
    goto :L0
  :L3
    const-string v0, "***"
    goto :L1
.end method

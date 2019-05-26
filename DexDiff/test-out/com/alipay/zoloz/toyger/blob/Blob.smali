.class public Lcom/alipay/zoloz/toyger/blob/Blob;
.super Ljava/lang/Object;
.source "SourceFile"

.field public blobElem:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/BlobElem;",
      ">;"
    }
  .end annotation
.end field

.field public blobVersion:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 13
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/BlobElem;",
      ">;)V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 15
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;
  .line 16
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;
  .line 17
    return-void
.end method

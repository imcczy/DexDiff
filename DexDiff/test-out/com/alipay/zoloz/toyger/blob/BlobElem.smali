.class public Lcom/alipay/zoloz/toyger/blob/BlobElem;
.super Ljava/lang/Object;
.source "SourceFile"

.field public content:[B

.field public docInfo:Lcom/alipay/zoloz/toyger/blob/DocInfo;

.field public faceInfos:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/FaceInfo;",
      ">;"
    }
  .end annotation
.end field

.field public idx:I

.field public subType:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 19
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/List;Lcom/alipay/zoloz/toyger/blob/DocInfo;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "I",
      "Ljava/lang/String;",
      "[B",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/FaceInfo;",
      ">;",
      "Lcom/alipay/zoloz/toyger/blob/DocInfo;",
      ")V"
    }
  .end annotation
  .registers 8
  .prologue
  .line 22
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 23
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;
  .line 24
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;
  .line 25
    iput p3, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I
  .line 26
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;
  .line 27
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B
  .line 28
    iput-object p6, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->faceInfos:Ljava/util/List;
  .line 29
    iput-object p7, p0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->docInfo:Lcom/alipay/zoloz/toyger/blob/DocInfo;
  .line 30
    return-void
.end method

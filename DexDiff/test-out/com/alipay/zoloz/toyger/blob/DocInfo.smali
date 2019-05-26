.class public Lcom/alipay/zoloz/toyger/blob/DocInfo;
.super Ljava/lang/Object;
.source "SourceFile"

.field public docType:Ljava/lang/String;

.field public faceRect:Landroid/graphics/Rect;

.field public fields:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/DocFieldInfo;",
      ">;"
    }
  .end annotation
.end field

.field public pageNo:I

.field public region:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Landroid/graphics/Point;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 19
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Landroid/graphics/Rect;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "I",
      "Ljava/util/List",
      "<",
      "Landroid/graphics/Point;",
      ">;",
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/toyger/blob/DocFieldInfo;",
      ">;",
      "Landroid/graphics/Rect;",
      ")V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 21
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/DocInfo;->docType:Ljava/lang/String;
  .line 22
    iput p2, p0, Lcom/alipay/zoloz/toyger/blob/DocInfo;->pageNo:I
  .line 23
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/blob/DocInfo;->region:Ljava/util/List;
  .line 24
    iput-object p4, p0, Lcom/alipay/zoloz/toyger/blob/DocInfo;->fields:Ljava/util/List;
  .line 25
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/blob/DocInfo;->faceRect:Landroid/graphics/Rect;
  .line 26
    return-void
.end method

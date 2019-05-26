.class public Lcom/alipay/zoloz/toyger/blob/FaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

.field public confidence:F

.field public feaVersion:Ljava/lang/String;

.field public feature:Ljava/lang/String;

.field public points:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Landroid/graphics/Point;",
      ">;"
    }
  .end annotation
.end field

.field public quality:F

.field public rect:Landroid/graphics/Rect;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;FFLjava/lang/String;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/graphics/Rect;",
      "Ljava/util/List",
      "<",
      "Landroid/graphics/Point;",
      ">;FF",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ")V"
    }
  .end annotation
  .registers 7
  .prologue
  .line 21
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 22
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->rect:Landroid/graphics/Rect;
  .line 23
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->points:Ljava/util/List;
  .line 24
    iput p3, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->confidence:F
  .line 25
    iput p4, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->quality:F
  .line 26
    iput-object p5, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->feature:Ljava/lang/String;
  .line 27
    iput-object p6, p0, Lcom/alipay/zoloz/toyger/blob/FaceInfo;->feaVersion:Ljava/lang/String;
  .line 28
    return-void
.end method

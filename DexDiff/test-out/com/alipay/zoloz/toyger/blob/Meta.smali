.class public Lcom/alipay/zoloz/toyger/blob/Meta;
.super Ljava/lang/Object;
.source "SourceFile"

.field public collectInfo:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field public score:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field public serialize:I

.field public type:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 16
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;I)V"
    }
  .end annotation
  .registers 5
  .prologue
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 18
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;
  .line 19
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/Meta;->score:Ljava/util/Map;
  .line 20
    iput-object p3, p0, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;
  .line 21
    iput p4, p0, Lcom/alipay/zoloz/toyger/blob/Meta;->serialize:I
  .line 22
    return-void
.end method

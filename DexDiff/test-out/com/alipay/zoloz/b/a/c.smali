.class public Lcom/alipay/zoloz/b/a/c;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 4
  .prologue
  .line 32
    check-cast p1, Ljava/util/Date;
    invoke-virtual { p1 }, Ljava/util/Date;->getTime()J
    move-result-wide v0
    invoke-static { v0, v1 }, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 7
  .prologue
  .line 24
    new-instance v0, Ljava/util/Date;
    check-cast p1, Ljava/lang/Long;
    invoke-virtual { p1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v2
    invoke-direct { v0, v2, v3 }, Ljava/util/Date;-><init>(J)V
    return-object v0
.end method

.method public a(Ljava/lang/Class;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class",
      "<*>;)Z"
    }
  .end annotation
  .registers 3
  .prologue
  .line 40
    const-class v0, Ljava/util/Date;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

.class public Lcom/alipay/zoloz/b/a/d;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 3
  .prologue
  .line 31
    check-cast p1, Ljava/lang/Enum;
    invoke-virtual { p1 }, Ljava/lang/Enum;->name()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 4
  .prologue
  .line 23
    check-cast p2, Ljava/lang/Class;
    invoke-virtual { p1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { p2, v0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
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
  .line 39
    const-class v0, Ljava/lang/Enum;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

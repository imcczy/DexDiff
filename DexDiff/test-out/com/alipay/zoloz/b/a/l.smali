.class public Lcom/alipay/zoloz/b/a/l;
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
  .registers 2
  .prologue
  .line 24
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 3
  .prologue
  .line 32
    return-object p1
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
    invoke-static { p1 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

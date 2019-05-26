.class public Lcom/alipay/zoloz/b/a/a;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 21
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 6
  .prologue
  .line 28
    check-cast p1, [Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;
  .line 30
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 32
    array-length v2, p1
    const/4 v0, 0
  :L0
    if-ge v0, v2, :L1
    aget-object v3, p1, v0
  .line 33
    invoke-static { v3 }, Lcom/alipay/zoloz/b/a/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    invoke-interface { v1, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 32
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
  .line 36
    return-object v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 8
  .prologue
  .line 45
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-class v1, Lorg/json/a/a/a;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
  .line 46
    const/4 v0, 0
  :L0
  .line 66
    return-object v0
  :L1
  .line 49
    check-cast p1, Lorg/json/a/a/a;
  .line 52
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;
    if-eqz v0, :L2
  .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Does not support generic array!"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L2
  .line 55
    check-cast p2, Ljava/lang/Class;
  .line 56
    invoke-virtual { p2 }, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    move-result-object v2
  .line 58
    invoke-virtual { p1 }, Lorg/json/a/a/a;->a()I
    move-result v3
  .line 60
    invoke-static { v2, v3 }, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    move-result-object v0
  .line 62
    const/4 v1, 0
  :L3
    if-ge v1, v3, :L0
  .line 63
    invoke-virtual { p1, v1 }, Lorg/json/a/a/a;->a(I)Ljava/lang/Object;
    move-result-object v4
    invoke-static { v4, v2 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v4
    invoke-static { v0, v1, v4 }, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
  .line 62
    add-int/lit8 v1, v1, 1
    goto :L3
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
  .line 74
    invoke-virtual { p1 }, Ljava/lang/Class;->isArray()Z
    move-result v0
    return v0
.end method

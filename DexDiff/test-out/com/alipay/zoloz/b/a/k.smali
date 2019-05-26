.class public Lcom/alipay/zoloz/b/a/k;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 21
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 7
  .prologue
    const/4 v1, 0
  .line 29
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-class v2, Lorg/json/a/a/a;
    invoke-virtual { v0, v2 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
  .line 30
    const/4 v0, 0
  :L0
  .line 48
    return-object v0
  :L1
  .line 33
    check-cast p1, Lorg/json/a/a/a;
  .line 35
    new-instance v2, Ljava/util/HashSet;
    invoke-direct { v2 }, Ljava/util/HashSet;-><init>()V
  .line 38
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :L3
  .line 39
    check-cast p2, Ljava/lang/reflect/ParameterizedType;
    invoke-interface { p2 }, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
    move-result-object v0
    aget-object v0, v0, v1
  :L2
  .line 44
    invoke-virtual { p1 }, Lorg/json/a/a/a;->a()I
    move-result v3
    if-ge v1, v3, :L4
  .line 45
    invoke-virtual { p1, v1 }, Lorg/json/a/a/a;->a(I)Ljava/lang/Object;
    move-result-object v3
    invoke-static { v3, v0 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v3
  .line 46
    invoke-interface { v2, v3 }, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
  .line 44
    add-int/lit8 v1, v1, 1
    goto :L2
  :L3
  .line 41
    const-class v0, Ljava/lang/Object;
    goto :L2
  :L4
    move-object v0, v2
  .line 48
    goto :L0
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
  .line 57
    const-class v0, Ljava/util/Set;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

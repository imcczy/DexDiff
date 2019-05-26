.class public Lcom/alipay/zoloz/b/a/b;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/util/Collection;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class",
      "<*>;",
      "Ljava/lang/reflect/Type;",
      ")",
      "Ljava/util/Collection",
      "<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L8 .. :L9 } :L10
  .registers 5
  .prologue
  .line 71
  .line 73
    const-class v0, Ljava/util/AbstractCollection;
    if-ne p0, v0, :L1
  .line 74
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  :L0
  .line 99
    return-object v0
  :L1
  .line 75
    const-class v0, Ljava/util/HashSet;
    invoke-virtual { p0, v0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L2
  .line 76
    new-instance v0, Ljava/util/HashSet;
    invoke-direct { v0 }, Ljava/util/HashSet;-><init>()V
    goto :L0
  :L2
  .line 77
    const-class v0, Ljava/util/LinkedHashSet;
    invoke-virtual { p0, v0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L3
  .line 78
    new-instance v0, Ljava/util/LinkedHashSet;
    invoke-direct { v0 }, Ljava/util/LinkedHashSet;-><init>()V
    goto :L0
  :L3
  .line 79
    const-class v0, Ljava/util/TreeSet;
    invoke-virtual { p0, v0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L4
  .line 80
    new-instance v0, Ljava/util/TreeSet;
    invoke-direct { v0 }, Ljava/util/TreeSet;-><init>()V
    goto :L0
  :L4
  .line 81
    const-class v0, Ljava/util/ArrayList;
    invoke-virtual { p0, v0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L5
  .line 82
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    goto :L0
  :L5
  .line 83
    const-class v0, Ljava/util/EnumSet;
    invoke-virtual { p0, v0 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    if-eqz v0, :L8
  .line 85
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :L7
  .line 86
    check-cast p1, Ljava/lang/reflect/ParameterizedType;
    invoke-interface { p1 }, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
    move-result-object v0
    const/4 v1, 0
    aget-object v0, v0, v1
  :L6
  .line 90
    check-cast v0, Ljava/lang/Class;
    invoke-static { v0 }, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
    move-result-object v0
    goto :L0
  :L7
  .line 88
    const-class v0, Ljava/lang/Object;
    goto :L6
  :L8
  .line 93
    invoke-virtual { p0 }, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Collection;
  :L9
    goto :L0
  :L10
  .line 94
    move-exception v0
  .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "create instane error, class "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
  .line 96
    invoke-virtual { p0 }, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 5
  .prologue
  .line 32
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 34
    check-cast p1, Ljava/lang/Iterable;
    invoke-interface { p1 }, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
  .line 35
    invoke-static { v2 }, Lcom/alipay/zoloz/b/a/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    invoke-interface { v0, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L0
  :L1
  .line 38
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 7
  .prologue
    const/4 v0, 0
  .line 44
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    const-class v2, Lorg/json/a/a/a;
    invoke-virtual { v1, v2 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
  .line 45
    const/4 v0, 0
  :L0
  .line 65
    return-object v0
  :L1
  .line 48
    invoke-static { p2 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    move-result-object v1
  .line 50
    check-cast p1, Lorg/json/a/a/a;
  .line 52
    invoke-static { v1, p2 }, Lcom/alipay/zoloz/b/a/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    move-result-object v1
  .line 55
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;
    if-eqz v2, :L3
  .line 56
    check-cast p2, Ljava/lang/reflect/ParameterizedType;
    invoke-interface { p2 }, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
    move-result-object v2
    aget-object v2, v2, v0
  :L2
  .line 61
    invoke-virtual { p1 }, Lorg/json/a/a/a;->a()I
    move-result v3
    if-ge v0, v3, :L4
  .line 62
    invoke-virtual { p1, v0 }, Lorg/json/a/a/a;->a(I)Ljava/lang/Object;
    move-result-object v3
    invoke-static { v3, v2 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v3
  .line 63
    invoke-interface { v1, v3 }, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
  .line 61
    add-int/lit8 v0, v0, 1
    goto :L2
  :L3
  .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Does not support the implement for generics."
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
    move-object v0, v1
  .line 65
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
  .line 104
    const-class v0, Ljava/util/Collection;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

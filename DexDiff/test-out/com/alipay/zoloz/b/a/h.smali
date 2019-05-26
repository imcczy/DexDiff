.class public Lcom/alipay/zoloz/b/a/h;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 32
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 6
  .prologue
  .line 40
    new-instance v2, Ljava/util/TreeMap;
    invoke-direct { v2 }, Ljava/util/TreeMap;-><init>()V
  .line 42
    check-cast p1, Ljava/util/Map;
    invoke-interface { p1 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L0
  .line 43
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
  .line 44
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 46
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    instance-of v1, v1, Ljava/lang/String;
    if-nez v1, :L1
  .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Map key must be String!"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 50
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 51
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
  .line 53
    invoke-static { v0 }, Lcom/alipay/zoloz/b/a/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    invoke-interface { v2, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L0
  :L2
  .line 56
    return-object v2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 8
  .prologue
  .line 62
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-class v1, Lorg/json/a/a/c;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
  .line 63
    const/4 v0, 0
  :L0
  .line 94
    return-object v0
  :L1
  .line 66
    check-cast p1, Lorg/json/a/a/c;
  .line 68
    invoke-virtual { p0, p2 }, Lcom/alipay/zoloz/b/a/h;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    move-result-object v3
  .line 70
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :L5
  .line 71
    check-cast p2, Ljava/lang/reflect/ParameterizedType;
  .line 72
    invoke-interface { p2 }, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
    move-result-object v0
    const/4 v1, 0
    aget-object v0, v0, v1
  .line 73
    invoke-interface { p2 }, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
    move-result-object v1
    const/4 v2, 1
    aget-object v2, v1, v2
  .line 75
    const-class v1, Ljava/lang/String;
    if-ne v1, v0, :L4
  .line 76
    invoke-virtual { p1 }, Lorg/json/a/a/c;->a()Ljava/util/Iterator;
    move-result-object v4
  :L2
  .line 77
    invoke-interface { v4 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L6
  .line 78
    invoke-interface { v4 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    move-object v1, v2
  .line 79
    check-cast v1, Ljava/lang/Class;
    invoke-static { v1 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/Class;)Z
    move-result v1
    if-eqz v1, :L3
  .line 80
    invoke-virtual { p1, v0 }, Lorg/json/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v3, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L2
  :L3
  .line 83
    invoke-virtual { p1, v0 }, Lorg/json/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    invoke-static { v1, v2 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v1
  .line 84
    invoke-interface { v3, v0, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L2
  :L4
  .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Deserialize Map Key must be String.class"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
  .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "Deserialize Map must be Generics!"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
    move-object v0, v3
  .line 94
    goto :L0
.end method

.method protected a(Ljava/lang/reflect/Type;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/reflect/Type;",
      ")",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/Object;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L12 .. :L13 } :L14
  .registers 6
  .prologue
  .line 99
    const-class v0, Ljava/util/Properties;
    if-ne p1, v0, :L1
  .line 100
    new-instance v0, Ljava/util/Properties;
    invoke-direct { v0 }, Ljava/util/Properties;-><init>()V
  :L0
  .line 138
    return-object v0
  :L1
  .line 103
    const-class v0, Ljava/util/Hashtable;
    if-ne p1, v0, :L2
  .line 104
    new-instance v0, Ljava/util/Hashtable;
    invoke-direct { v0 }, Ljava/util/Hashtable;-><init>()V
    goto :L0
  :L2
  .line 107
    const-class v0, Ljava/util/IdentityHashMap;
    if-ne p1, v0, :L3
  .line 108
    new-instance v0, Ljava/util/IdentityHashMap;
    invoke-direct { v0 }, Ljava/util/IdentityHashMap;-><init>()V
    goto :L0
  :L3
  .line 111
    const-class v0, Ljava/util/SortedMap;
    if-eq p1, v0, :L4
    const-class v0, Ljava/util/TreeMap;
    if-ne p1, v0, :L5
  :L4
  .line 112
    new-instance v0, Ljava/util/TreeMap;
    invoke-direct { v0 }, Ljava/util/TreeMap;-><init>()V
    goto :L0
  :L5
  .line 115
    const-class v0, Ljava/util/concurrent/ConcurrentMap;
    if-eq p1, v0, :L6
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;
    if-ne p1, v0, :L7
  :L6
  .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    goto :L0
  :L7
  .line 119
    const-class v0, Ljava/util/Map;
    if-eq p1, v0, :L8
    const-class v0, Ljava/util/HashMap;
    if-ne p1, v0, :L9
  :L8
  .line 120
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    goto :L0
  :L9
  .line 123
    const-class v0, Ljava/util/LinkedHashMap;
    if-ne p1, v0, :L10
  .line 124
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0 }, Ljava/util/LinkedHashMap;-><init>()V
    goto :L0
  :L10
  .line 127
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :L11
  .line 128
    check-cast p1, Ljava/lang/reflect/ParameterizedType;
  .line 129
    invoke-interface { p1 }, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
    move-result-object v0
    invoke-virtual { p0, v0 }, Lcom/alipay/zoloz/b/a/h;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    move-result-object v0
    goto :L0
  :L11
    move-object v0, p1
  .line 132
    check-cast v0, Ljava/lang/Class;
  .line 133
    invoke-virtual { v0 }, Ljava/lang/Class;->isInterface()Z
    move-result v1
    if-eqz v1, :L12
  .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "unsupport type "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
  .line 138
    invoke-virtual { v0 }, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map;
  :L13
    goto :L0
  :L14
  .line 139
    move-exception v0
  .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "unsupport type "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v1, v2, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v1
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
  .line 146
    const-class v0, Ljava/util/Map;
    invoke-virtual { v0, p1 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v0
    return v0
.end method

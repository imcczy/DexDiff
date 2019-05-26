.class public Lcom/alipay/zoloz/b/a/g;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/b/a/i;
.implements Lcom/alipay/zoloz/b/a/j;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 20
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
  .registers 5
  .prologue
    const/4 v0, 0
  .line 94
    if-eqz p0, :L0
    if-nez p1, :L1
  :L0
  .line 117
    return-object v0
  :L1
  .line 98
    invoke-virtual { p0 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v1
  .line 101
    const-string v2, "this$0"
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 105
    invoke-virtual { p0 }, Ljava/lang/reflect/Field;->isAccessible()Z
    move-result v1
  .line 107
    const/4 v2, 1
    invoke-virtual { p0, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 110
    invoke-virtual { p0, p1 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
  .line 111
    if-eqz v2, :L0
  .line 115
    invoke-virtual { p0, v1 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 117
    invoke-static { v2 }, Lcom/alipay/zoloz/b/a/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    goto :L0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 9
  .prologue
  .line 24
    new-instance v3, Ljava/util/TreeMap;
    invoke-direct { v3 }, Ljava/util/TreeMap;-><init>()V
  .line 26
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
  .line 27
    invoke-virtual { v1 }, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    move-result-object v0
  :L0
  .line 29
    const-class v2, Ljava/lang/Object;
    invoke-virtual { v1, v2 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L4
  .line 30
    if-eqz v0, :L3
    array-length v2, v0
    if-lez v2, :L3
  .line 31
    array-length v4, v0
    const/4 v2, 0
  :L1
    if-ge v2, v4, :L3
    aget-object v5, v0, v2
  .line 32
    invoke-static { v5, p1 }, Lcom/alipay/zoloz/b/a/g;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
  .line 33
    if-eqz v6, :L2
  .line 34
    invoke-virtual { v5 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-interface { v3, v5, v6 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
  .line 31
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
  .line 38
    invoke-virtual { v1 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object v1
  .line 39
    invoke-virtual { v1 }, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    move-result-object v0
    goto :L0
  :L4
  .line 42
    return-object v3
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 11
  .prologue
  .line 51
    invoke-virtual { p1 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    const-class v1, Lorg/json/a/a/c;
    invoke-virtual { v0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
  .line 52
    const/4 v0, 0
  :L0
  .line 78
    return-object v0
  :L1
  .line 55
    check-cast p1, Lorg/json/a/a/c;
  .line 57
    check-cast p2, Ljava/lang/Class;
  .line 59
    invoke-virtual { p2 }, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v0
  :L2
  .line 61
    const-class v1, Ljava/lang/Object;
    invoke-virtual { p2, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 62
    invoke-virtual { p2 }, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    move-result-object v2
  .line 63
    if-eqz v2, :L5
    array-length v1, v2
    if-lez v1, :L5
  .line 64
    array-length v3, v2
    const/4 v1, 0
  :L3
    if-ge v1, v3, :L5
    aget-object v4, v2, v1
  .line 65
    invoke-virtual { v4 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v5
  .line 66
    invoke-virtual { v4 }, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;
    move-result-object v6
  .line 67
    invoke-virtual { p1, v5 }, Lorg/json/a/a/c;->b(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L4
  .line 68
    const/4 v7, 1
    invoke-virtual { v4, v7 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 69
    invoke-virtual { p1, v5 }, Lorg/json/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v5
    invoke-static { v5, v6 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v5
  .line 71
    invoke-virtual { v4, v0, v5 }, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
  :L4
  .line 64
    add-int/lit8 v1, v1, 1
    goto :L3
  :L5
  .line 75
    invoke-virtual { p2 }, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    move-result-object p2
    goto :L2
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
  .line 83
    const/4 v0, 1
    return v0
.end method

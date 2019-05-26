.class public final Lcom/alipay/zoloz/toyger/util/ObjectUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.method private constructor <init>()V
  .registers 1
  .prologue
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static objectToObjectMap(Ljava/lang/Object;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      ")",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
  .registers 7
  .prologue
  .line 33
    if-nez p0, :L1
  .line 34
    const/4 v0, 0
  :L0
  .line 48
    return-object v0
  :L1
  .line 37
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 39
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    move-result-object v0
  .line 40
    if-eqz v0, :L2
    array-length v2, v0
    if-nez v2, :L3
  :L2
  .line 41
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
    move-result-object v0
  :L3
  .line 43
    array-length v3, v0
    const/4 v2, 0
  :L4
    if-ge v2, v3, :L5
    aget-object v4, v0, v2
  .line 44
    const/4 v5, 1
    invoke-virtual { v4, v5 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  .line 45
    invoke-virtual { v4 }, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    invoke-interface { v1, v5, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 43
    add-int/lit8 v2, v2, 1
    goto :L4
  :L5
    move-object v0, v1
  .line 48
    goto :L0
.end method

.method public static objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      ")",
      "Ljava/util/HashMap",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .catch Ljava/lang/Throwable; { :L0 .. :L2 } :L3
  .registers 7
  .prologue
  .line 18
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  :L0
  .line 20
    invoke-static { p0 }, Lcom/alipay/zoloz/toyger/util/ObjectUtil;->objectToObjectMap(Ljava/lang/Object;)Ljava/util/Map;
    move-result-object v0
  .line 21
    if-eqz v0, :L4
    invoke-interface { v0 }, Ljava/util/Map;->isEmpty()Z
    move-result v2
    if-nez v2, :L4
  .line 22
    invoke-interface { v0 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2
  :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L4
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 23
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v3, v0 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    goto :L1
  :L3
  .line 26
    move-exception v0
  .line 27
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
  :L4
  .line 29
    return-object v1
.end method

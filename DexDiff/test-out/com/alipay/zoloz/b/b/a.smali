.class public Lcom/alipay/zoloz/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/reflect/Type;",
      ")",
      "Ljava/lang/Class",
      "<*>;"
    }
  .end annotation
  .registers 3
  .prologue
  .line 70
    instance-of v0, p0, Ljava/lang/Class;
    if-eqz v0, :L1
  .line 71
    check-cast p0, Ljava/lang/Class;
  :L0
  .line 73
    return-object p0
  :L1
  .line 72
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :L2
  .line 73
    check-cast p0, Ljava/lang/reflect/ParameterizedType;
    invoke-interface { p0 }, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    move-result-object p0
    goto :L0
  :L2
  .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;
    const-string v1, "TODO"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static a(Ljava/lang/Class;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Class",
      "<*>;)Z"
    }
  .end annotation
  .registers 3
  .prologue
    const/4 v0, 1
  .line 16
    invoke-virtual { p0 }, Ljava/lang/Class;->isPrimitive()Z
    move-result v1
    if-eqz v1, :L1
  :L0
  .line 39
    return v0
  :L1
  .line 18
    const-class v1, Ljava/lang/String;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 20
    const-class v1, Ljava/lang/Integer;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 22
    const-class v1, Ljava/lang/Long;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 24
    const-class v1, Ljava/lang/Double;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 26
    const-class v1, Ljava/lang/Float;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 28
    const-class v1, Ljava/lang/Boolean;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 30
    const-class v1, Ljava/lang/Short;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 32
    const-class v1, Ljava/lang/Character;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 34
    const-class v1, Ljava/lang/Byte;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 36
    const-class v1, Ljava/lang/Void;
    invoke-virtual { p0, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
  .line 39
    const/4 v0, 0
    goto :L0
.end method

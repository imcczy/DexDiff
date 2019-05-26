.class public Lcom/alipay/zoloz/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static a:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/b/a/j;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 31
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
  .line 34
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/l;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/l;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 35
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/d;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/d;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 36
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/c;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/c;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 37
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/h;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/h;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 38
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/b;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/b;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 39
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/a;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/a;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 40
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/g;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/g;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 41
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
  .registers 5
  .prologue
  .line 46
    if-nez p0, :L1
  .line 47
    const/4 v0, 0
  :L0
  .line 63
    return-object v0
  :L1
  .line 50
    invoke-static { p0 }, Lcom/alipay/zoloz/b/a/f;->b(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 52
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-static { v1 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/Class;)Z
    move-result v1
    if-eqz v1, :L2
  .line 53
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lorg/json/a/a/c;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L2
  .line 56
    const-class v1, Ljava/util/Collection;
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v1
    if-eqz v1, :L3
  .line 57
    check-cast v0, Ljava/util/List;
  .line 58
    new-instance v1, Lorg/json/a/a/a;
    invoke-direct { v1, v0 }, Lorg/json/a/a/a;-><init>(Ljava/util/Collection;)V
    invoke-virtual { v1 }, Lorg/json/a/a/a;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L3
  .line 61
    const-class v1, Ljava/util/Map;
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    move-result v1
    if-eqz v1, :L4
  .line 62
    check-cast v0, Ljava/util/Map;
  .line 63
    new-instance v1, Lorg/json/a/a/c;
    invoke-direct { v1, v0 }, Lorg/json/a/a/c;-><init>(Ljava/util/Map;)V
    invoke-virtual { v1 }, Lorg/json/a/a/c;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L0
  :L4
  .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Unsupported Class : "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v1, v0 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 4
  .prologue
  .line 72
    if-nez p0, :L1
  .line 73
    const/4 v0, 0
  :L0
  .line 80
    return-object v0
  :L1
  .line 76
    sget-object v0, Lcom/alipay/zoloz/b/a/f;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L3
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/b/a/j;
  .line 77
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-interface { v0, v2 }, Lcom/alipay/zoloz/b/a/j;->a(Ljava/lang/Class;)Z
    move-result v2
    if-eqz v2, :L2
  .line 78
    invoke-interface { v0, p0 }, Lcom/alipay/zoloz/b/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 79
    if-eqz v0, :L2
    goto :L0
  :L3
  .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Unsupported Class : "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

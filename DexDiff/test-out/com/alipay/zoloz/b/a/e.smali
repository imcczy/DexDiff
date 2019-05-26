.class public Lcom/alipay/zoloz/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

.field static a:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lcom/alipay/zoloz/b/a/i;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 2
  .prologue
  .line 24
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
  .line 27
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/l;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/l;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 28
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/d;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/d;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 29
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/c;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/c;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 30
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/h;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/h;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 31
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/k;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/k;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 32
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/b;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/b;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 33
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/a;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/a;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 34
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    new-instance v1, Lcom/alipay/zoloz/b/a/g;
    invoke-direct { v1 }, Lcom/alipay/zoloz/b/a/g;-><init>()V
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 35
    return-void
.end method

.method public final static a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<T:",
      "Ljava/lang/Object;",
      ">(",
      "Ljava/lang/Object;",
      "Ljava/lang/reflect/Type;",
      ")TT;"
    }
  .end annotation
  .registers 5
  .prologue
  .line 64
    sget-object v0, Lcom/alipay/zoloz/b/a/e;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/b/a/i;
  .line 65
    invoke-static { p1 }, Lcom/alipay/zoloz/b/b/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    move-result-object v2
  .line 66
    invoke-interface { v0, v2 }, Lcom/alipay/zoloz/b/a/i;->a(Ljava/lang/Class;)Z
    move-result v2
    if-eqz v2, :L0
  .line 67
    invoke-interface { v0, p0, p1 }, Lcom/alipay/zoloz/b/a/i;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v0
  .line 68
    if-eqz v0, :L0
  :L1
  .line 74
    return-object v0
  :L2
    const/4 v0, 0
    goto :L1
.end method

.method public final static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  .registers 4
  .prologue
  .line 39
    if-eqz p0, :L0
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :L2
  :L0
  .line 40
    const/4 v0, 0
  :L1
  .line 57
    return-object v0
  :L2
  .line 42
    invoke-virtual { p0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
  .line 45
    const-string v1, "["
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
    const-string v1, "]"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
  .line 46
    new-instance v1, Lorg/json/a/a/a;
    invoke-direct { v1, v0 }, Lorg/json/a/a/a;-><init>(Ljava/lang/String;)V
  .line 47
    invoke-static { v1, p1 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v0
    goto :L1
  :L3
  .line 51
    const-string v1, "{"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L4
    const-string v1, "}"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L4
  .line 52
    new-instance v1, Lorg/json/a/a/c;
    invoke-direct { v1, v0 }, Lorg/json/a/a/c;-><init>(Ljava/lang/String;)V
  .line 53
    invoke-static { v1, p1 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v0
    goto :L1
  :L4
  .line 57
    invoke-static { v0, p1 }, Lcom/alipay/zoloz/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    move-result-object v0
    goto :L1
.end method

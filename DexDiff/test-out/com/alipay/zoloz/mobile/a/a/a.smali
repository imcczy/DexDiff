.class public Lcom/alipay/zoloz/mobile/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
  .catch Ljava/lang/ClassNotFoundException; { :L0 .. :L1 } :L7
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L6
  .catch Ljava/lang/IllegalArgumentException; { :L0 .. :L1 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L3
  .registers 7
  .prologue
    const/4 v0, 0
  :L0
  .line 80
    invoke-static { p0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
  .line 81
    invoke-virtual { v1, p1, p2 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v1
  .line 82
    const/4 v2, 1
    invoke-virtual { v1, v2 }, Ljava/lang/reflect/Method;->setAccessible(Z)V
  .line 83
    const/4 v2, 0
    invoke-virtual { v1, v2, p3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    move-result-object v0
  :L2
  .line 90
    return-object v0
  :L3
  .line 88
    move-exception v1
    goto :L2
  :L4
  .line 87
    move-exception v1
    goto :L2
  :L5
  .line 86
    move-exception v1
    goto :L2
  :L6
  .line 85
    move-exception v1
    goto :L2
  :L7
  .line 84
    move-exception v1
    goto :L2
.end method

.class public Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static a:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal",
      "<",
      "Ljava/lang/Object;",
      ">;"
    }
  .end annotation
.end field

.field private final static b:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal",
      "<",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/Object;",
      ">;>;"
    }
  .end annotation
.end field

.field private c:B

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 31
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;
  .line 35
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;)V
  .registers 3
  .prologue
  .line 60
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 48
    const/4 v0, 0
    iput-byte v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->c:B
  .line 61
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;
  .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 63
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/lang/Class",
      "<*>;",
      "Ljava/lang/reflect/Method;",
      "[",
      "Ljava/lang/Object;",
      "[",
      "Ljava/lang/annotation/Annotation;",
      ")V"
    }
  .end annotation
  .registers 6
  .prologue
  .line 158
    return-void
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "[B",
      "Ljava/lang/Class",
      "<*>;",
      "Ljava/lang/reflect/Method;",
      "[",
      "Ljava/lang/Object;",
      "[",
      "Ljava/lang/annotation/Annotation;",
      ")V"
    }
  .end annotation
  .registers 7
  .prologue
  .line 125
    return-void
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/zoloz/mobile/a/a/b;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "[B",
      "Ljava/lang/Class",
      "<*>;",
      "Ljava/lang/reflect/Method;",
      "[",
      "Ljava/lang/Object;",
      "[",
      "Ljava/lang/annotation/Annotation;",
      "Lcom/alipay/zoloz/mobile/a/a/b;",
      ")V"
    }
  .end annotation
  .registers 8
  .prologue
  .line 142
    throw p7
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZ)[B
  .registers 12
  .prologue
  .line 172
  .line 174
    invoke-virtual { p0, p4, p3, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->getSerializer(ILjava/lang/String;[Ljava/lang/Object;)Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Serializer;
    move-result-object v0
  .line 176
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    invoke-virtual { v1 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L0
  .line 177
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    invoke-virtual { v1 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v1
    invoke-interface { v0, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Serializer;->setExtParam(Ljava/lang/Object;)V
  :L0
  .line 180
    invoke-interface { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Serializer;->packet()[B
    move-result-object v4
    move-object v0, p0
    move-object v1, p1
    move v2, p4
    move-object v3, p3
    move v5, p5
    invoke-virtual/range { v0 .. v5 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)Lcom/alipay/zoloz/android/phone/mrpc/core/RpcCaller;
    move-result-object v0
  .line 181
    invoke-interface { v0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcCaller;->call()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [B
    check-cast v0, [B
  .line 183
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    const/4 v2, 0
    invoke-virtual { v1, v2 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  .line 185
    return-object v0
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
  .registers 4
  .prologue
  .line 209
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L0
  .line 210
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L0
  .line 212
    sget-object v0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map;
    invoke-interface { v0, p0, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 213
    return-void
.end method

.method public batchBegin()V
  .registers 2
  .prologue
  .line 192
    const/4 v0, 1
    iput-byte v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->c:B
  .line 193
    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/concurrent/FutureTask",
      "<*>;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 199
    const/4 v0, 0
    iput-byte v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->c:B
  .line 200
    const/4 v0, 0
    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Deserializer;
  .registers 4
  .prologue
  .line 247
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;
    invoke-direct { v0, p1, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V
    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;[Ljava/lang/Object;)Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Serializer;
  .registers 5
  .prologue
  .line 236
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;
    invoke-direct { v0, p1, p2, p3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    return-object v0
.end method

.method public getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)Lcom/alipay/zoloz/android/phone/mrpc/core/RpcCaller;
  .registers 13
  .prologue
  .line 224
    new-instance v0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;
    invoke-virtual { v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/zoloz/android/phone/mrpc/core/Config;
    move-result-object v1
    move-object v2, p1
    move v3, p2
    move-object v4, p3
    move-object v5, p4
    move v6, p5
    invoke-direct/range { v0 .. v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpCaller;-><init>(Lcom/alipay/zoloz/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/Object;",
      "Ljava/lang/Class",
      "<*>;",
      "Ljava/lang/reflect/Method;",
      "[",
      "Ljava/lang/Object;",
      ")",
      "Ljava/lang/Object;"
    }
  .end annotation
  .catch Lcom/alipay/zoloz/mobile/a/a/b; { :L4 .. :L5 } :L9
  .catch Lcom/alipay/zoloz/mobile/a/a/b; { :L6 .. :L7 } :L11
  .registers 20
  .prologue
  .line 74
    invoke-static { }, Lcom/alipay/zoloz/android/phone/mrpc/core/ThreadUtil;->checkMainThread()Z
    move-result v1
    if-eqz v1, :L0
  .line 75
    new-instance v1, Ljava/lang/IllegalThreadStateException;
    const-string v2, "can't in main thread call rpc ."
    invoke-direct { v1, v2 }, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V
    throw v1
  :L0
  .line 76
    const-class v1, Lcom/alipay/zoloz/mobile/framework/service/annotation/OperationType;
    move-object/from16 v0, p3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    move-result-object v1
    check-cast v1, Lcom/alipay/zoloz/mobile/framework/service/annotation/OperationType;
  .line 77
    const-class v2, Lcom/alipay/zoloz/mobile/framework/service/annotation/ResetCookie;
    move-object/from16 v0, p3
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    move-result-object v2
    if-eqz v2, :L2
    const/4 v12, 1
  :L1
  .line 78
    invoke-virtual/range { p3 .. p3 }, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
    move-result-object v13
  .line 79
    invoke-virtual/range { p3 .. p3 }, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;
    move-result-object v6
  .line 80
    sget-object v2, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  .line 81
    sget-object v2, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;
    const/4 v3, 0
    invoke-virtual { v2, v3 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  .line 83
    if-nez v1, :L3
  .line 84
    new-instance v1, Ljava/lang/IllegalStateException;
    const-string v2, "OperationType must be set."
    invoke-direct { v1, v2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v1
  :L2
  .line 77
    const/4 v12, 0
    goto :L1
  :L3
  .line 86
    invoke-interface { v1 }, Lcom/alipay/zoloz/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;
    move-result-object v10
  .line 88
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual { v1 }, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    move-result v11
    move-object v1, p0
    move-object/from16 v2, p1
    move-object/from16 v3, p2
    move-object/from16 v4, p3
    move-object/from16 v5, p4
  .line 90
    invoke-direct/range { v1 .. v6 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
  .line 93
    const/4 v1, 0
  :L4
  .line 95
    iget-byte v2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->c:B
    if-nez v2, :L7
    move-object v7, p0
    move-object/from16 v8, p3
    move-object/from16 v9, p4
  .line 96
    invoke-direct/range { v7 .. v12 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZ)[B
  :L5
    move-result-object v1
  :L6
  .line 97
    invoke-virtual { p0, v13, v1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Deserializer;
    move-result-object v2
  .line 98
    invoke-interface { v2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Deserializer;->parser()Ljava/lang/Object;
    move-result-object v2
  .line 99
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    if-eq v13, v3, :L7
  .line 100
    sget-object v3, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v3, v2 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L7
    move-object v9, v1
  :L8
    move-object v7, p0
    move-object/from16 v8, p1
    move-object/from16 v10, p2
    move-object/from16 v11, p3
    move-object/from16 v12, p4
    move-object v13, v6
  .line 108
    invoke-direct/range { v7 .. v13 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
  .line 110
    sget-object v1, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;
    invoke-virtual { v1 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v1
    return-object v1
  :L9
  .line 103
    move-exception v14
    move-object v9, v1
  :L10
  .line 104
    invoke-virtual { v14, v10 }, Lcom/alipay/zoloz/mobile/a/a/b;->setOperationType(Ljava/lang/String;)V
    move-object v7, p0
    move-object/from16 v8, p1
    move-object/from16 v10, p2
    move-object/from16 v11, p3
    move-object/from16 v12, p4
    move-object v13, v6
  .line 105
    invoke-direct/range { v7 .. v14 }, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/zoloz/mobile/a/a/b;)V
    goto :L8
  :L11
  .line 103
    move-exception v14
    move-object v9, v1
    goto :L10
.end method

.class Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "LoggingConfiguration"
.end annotation

.field private final a:Ljava/lang/String;

.field private final b:I

.method private constructor <init>(Ljava/lang/String;I)V
  .registers 3
  .prologue
  .line 407
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 408
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;
  .line 409
    iput p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I
  .line 410
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$1;)V
  .registers 4
  .prologue
  .line 402
    invoke-direct { p0, p1, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method private a(Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 423
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;
    invoke-static { v0, v1, p1 }, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
  .line 424
    return-void
.end method

.method private a()Z
  .registers 3
  .prologue
  .line 416
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;
    iget v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I
    invoke-static { v0, v1 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v0
    return v0
.end method

.method static synthetic access$400(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;)Z
  .registers 2
  .prologue
  .line 402
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a()Z
    move-result v0
    return v0
.end method

.method static synthetic access$600(Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 402
    invoke-direct { p0, p1 }, Lcom/alipay/zoloz/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a(Ljava/lang/String;)V
    return-void
.end method

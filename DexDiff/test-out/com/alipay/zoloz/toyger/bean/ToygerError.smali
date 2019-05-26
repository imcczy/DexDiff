.class public final enum Lcom/alipay/zoloz/toyger/bean/ToygerError;
.super Ljava/lang/Enum;
.source "SourceFile"

.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Enum",
    "<",
    "Lcom/alipay/zoloz/toyger/bean/ToygerError;",
    ">;"
  }
.end annotation

.field private final static synthetic $VALUES:[Lcom/alipay/zoloz/toyger/bean/ToygerError;

.field public final static enum ALGORITHM_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;

.field public final static enum CAMERA_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;

.field public final static enum LIVENESS_FAIL:Lcom/alipay/zoloz/toyger/bean/ToygerError;

.field public final static enum NORMAL:Lcom/alipay/zoloz/toyger/bean/ToygerError;

.method static constructor <clinit>()V
  .registers 6
  .prologue
    const/4 v5, 3
    const/4 v4, 2
    const/4 v3, 1
    const/4 v2, 0
  .line 7
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    const-string v1, "ALGORITHM_ERROR"
    invoke-direct { v0, v1, v2 }, Lcom/alipay/zoloz/toyger/bean/ToygerError;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->ALGORITHM_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 8
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    const-string v1, "CAMERA_ERROR"
    invoke-direct { v0, v1, v3 }, Lcom/alipay/zoloz/toyger/bean/ToygerError;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->CAMERA_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 9
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    const-string v1, "LIVENESS_FAIL"
    invoke-direct { v0, v1, v4 }, Lcom/alipay/zoloz/toyger/bean/ToygerError;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->LIVENESS_FAIL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 10
    new-instance v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    const-string v1, "NORMAL"
    invoke-direct { v0, v1, v5 }, Lcom/alipay/zoloz/toyger/bean/ToygerError;-><init>(Ljava/lang/String;I)V
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->NORMAL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 6
    const/4 v0, 4
    new-array v0, v0, [Lcom/alipay/zoloz/toyger/bean/ToygerError;
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/ToygerError;->ALGORITHM_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    aput-object v1, v0, v2
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/ToygerError;->CAMERA_ERROR:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    aput-object v1, v0, v3
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/ToygerError;->LIVENESS_FAIL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    aput-object v1, v0, v4
    sget-object v1, Lcom/alipay/zoloz/toyger/bean/ToygerError;->NORMAL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    aput-object v1, v0, v5
    sput-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->$VALUES:[Lcom/alipay/zoloz/toyger/bean/ToygerError;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .prologue
  .line 6
    invoke-direct { p0, p1, p2 }, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .registers 2
  .prologue
  .line 6
    const-class v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    invoke-static { v0, p0 }, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    move-result-object v0
    check-cast v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;
    return-object v0
.end method

.method public static values()[Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .registers 1
  .prologue
  .line 6
    sget-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->$VALUES:[Lcom/alipay/zoloz/toyger/bean/ToygerError;
    invoke-virtual { v0 }, [Lcom/alipay/zoloz/toyger/bean/ToygerError;->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/alipay/zoloz/toyger/bean/ToygerError;
    return-object v0
.end method
